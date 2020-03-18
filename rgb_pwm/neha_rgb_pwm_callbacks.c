// This callback file is created for your convenience. You may add application
// code to this file. If you regenerate this file over a previous version, the
// previous version will be overwritten and any code you have added will be
// lost.

#include "app/framework/include/af.h"
#include PLATFORM_HEADER
#include CONFIGURATION_HEADER
#include EMBER_AF_API_BULB_PWM_DRIVER
#include "hal/hal.h"
#include EMBER_AF_API_NETWORK_STEERING

#include "em_cmu.h"
#include "em_gpio.h"
#include "em_timer.h"

#if HAL_BULBPWM_ENABLE == 1
#define BULB_PWM_USING_TIMER0
#define BULB_PWM_WHITE_TIMER      BSP_BULBPWM_TIMER
#define BULB_PWM_WHITE_CHANNEL    0

#if HAL_BULBPWM_COLOR_ENABLE == 1
  #define BULB_PWM_USING_TIMER1
  #define BULB_PWM_RED_TIMER        BSP_BULBPWM_COLOR_TIMER
  #define BULB_PWM_RED_CHANNEL      0
  #define BULB_PWM_GREEN_TIMER      BSP_BULBPWM_COLOR_TIMER
  #define BULB_PWM_GREEN_CHANNEL    1
  #define BULB_PWM_BLUE_TIMER       BSP_BULBPWM_COLOR_TIMER
  #define BULB_PWM_BLUE_CHANNEL     2
#endif

#define CLOCK_FREQUENCY         38400000
#define PWM_INVERT_OUTPUT       false
#endif
static uint16_t ticksPerPeriod;
static uint16_t pwmFrequency;

#define TIMER_DEFAULT_INIT            \
  {                                   \
    .eventCtrl = timerEventEveryEdge, \
    .edge = timerEdgeBoth,            \
    .prsSel = timerPRSSELCh0,         \
    .cufoa = timerOutputActionNone,   \
    .cofoa = timerOutputActionNone,   \
    .cmoa = timerOutputActionToggle,  \
    .mode = timerCCModePWM,           \
    .filter = false,                  \
    .prsInput = false,                \
    .coist = true,                   \
    .outInvert = PWM_INVERT_OUTPUT,   \
  }



static void initFrequency(void)
{
  TIMER_InitCC_TypeDef timerCCInit = TIMER_DEFAULT_INIT;

  /* Select timer parameters */
  TIMER_Init_TypeDef timerInit = {
    .enable = true,
    .debugRun = true,
    .prescale = timerPrescale1,
    .clkSel = timerClkSelHFPerClk,
    .fallAction = timerInputActionNone,
    .riseAction = timerInputActionNone,
    .mode = timerModeUp,
    .dmaClrAct = false,
    .quadModeX4 = false,
    .oneShot = false,
    .sync = false,
  };

  uint32_t ticksPerPeriod32;

  pwmFrequency = halBulbPwmDriverFrequencyCallback();

 if (pwmFrequency == HAL_BULB_PWM_DRIVER_USE_DEFAULT_FREQUENCY) {
    pwmFrequency = HAL_BULBPWM_FREQUENCY;
  }

  ticksPerPeriod32 = (uint32_t) CLOCK_FREQUENCY;
  ticksPerPeriod32 /= (uint32_t) pwmFrequency;

  ticksPerPeriod = (uint16_t) ticksPerPeriod32;

#ifdef BULB_PWM_USING_TIMER0
  CMU_ClockEnable(cmuClock_TIMER0, true);

#if HAL_BULBPWM_WHITE_ENABLE == 1
  TIMER_InitCC(TIMER0, 0, &timerCCInit);
  TIMER0->ROUTEPEN |= TIMER_ROUTEPEN_CC0PEN;
  TIMER0->ROUTELOC0 |= (BSP_BULBPWM_CC0_LOC << _TIMER_ROUTELOC0_CC0LOC_SHIFT);//TIMER_ROUTELOC0_CC0LOC_LOC11;  (BSP_BULBPWM_CC0_LOC << _TIMER_ROUTELOC0_CC0LOC_SHIFT);
  TIMER_CompareBufSet(TIMER0, 0,ticksPerPeriod/2 );
#endif

  TIMER_TopSet(TIMER0, ticksPerPeriod);

    // Set compare value starting at 0 - it will be incremented in the interrupt
    // handler
  TIMER_Init(TIMER0, &timerInit);
  #endif

  #ifdef BULB_PWM_USING_TIMER1
    CMU_ClockEnable(cmuClock_TIMER1, true);

  #if HAL_BULBPWM_RED_ENABLE == 1
    TIMER_InitCC(TIMER1, 0, &timerCCInit);
    TIMER1->ROUTEPEN |= TIMER_ROUTEPEN_CC0PEN;
    TIMER1->ROUTELOC0 |= (BSP_BULBPWM_COLOR_CC0_LOC << _TIMER_ROUTELOC0_CC0LOC_SHIFT);
   // TIMER_CompareBufSet(TIMER1, 0, 19200);
    TIMER_CompareBufSet(TIMER1, 0, 0);
  #endif

  #if HAL_BULBPWM_GREEN_ENABLE == 1
    TIMER_InitCC(TIMER1, 1, &timerCCInit);
    TIMER1->ROUTEPEN |= TIMER_ROUTEPEN_CC1PEN;
    TIMER1->ROUTELOC0 |= (BSP_BULBPWM_COLOR_CC1_LOC << _TIMER_ROUTELOC0_CC1LOC_SHIFT);
   // TIMER_CompareBufSet(TIMER1, 1, 19200);
   TIMER_CompareBufSet(TIMER1, 1, 0);
  #endif

  #if HAL_BULBPWM_BLUE_ENABLE == 1
    TIMER_InitCC(TIMER1, 2, &timerCCInit);
    TIMER1->ROUTEPEN |= TIMER_ROUTEPEN_CC2PEN;
    TIMER1->ROUTELOC0 |= (BSP_BULBPWM_COLOR_CC2_LOC << _TIMER_ROUTELOC0_CC2LOC_SHIFT);
  //  TIMER_CompareBufSet(TIMER1, 2, 19200);
    TIMER_CompareBufSet(TIMER1, 2, 0);
  #endif
    TIMER_TopSet(TIMER1, ticksPerPeriod);

     // Set compare value starting at 0 - it will be incremented in the interrupt
     // handler
     TIMER_Init(TIMER1, &timerInit);
   #endif
};

/** @brief Stack Status
 *
 * This function is called by the application framework from the stack status
 * handler.  This callbacks provides applications an opportunity to be notified
 * of changes to the stack status and take appropriate action.  The return code
 * from this callback is ignored by the framework.  The framework will always
 * process the stack status after the callback returns.
 *
 * @param status   Ver.: always
 *
 *
 *
 */


 static void initGpio(void)
  		{
  		  // GPIO setup
  		  CMU_ClockEnable(cmuClock_GPIO, true);

  		#if HAL_BULBPWM_WHITE_ENABLE == 1
  		  GPIO_PinModeSet(BSP_BULBPWM_CC0_PORT,
  		                 BSP_BULBPWM_CC0_PIN,
  		               gpioModePushPull,
  		               0);
  		#endif

  	#if HAL_BULBPWM_RED_ENABLE == 1
  	  GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC0_PORT,
  	                  BSP_BULBPWM_COLOR_CC0_PIN,
  	                  gpioModePushPull,
  	                  0);
  	#endif
  	#if HAL_BULBPWM_GREEN_ENABLE == 1
  	  GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC1_PORT,
  	                  BSP_BULBPWM_COLOR_CC1_PIN,
  	                  gpioModePushPull,
  	                  0);
  	#endif
  	#if HAL_BULBPWM_BLUE_ENABLE == 1
  	  GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC2_PORT,
  	                  BSP_BULBPWM_COLOR_CC2_PIN,
  	                  gpioModePushPull,
  	                  0);
  	#endif
  		}


boolean emberAfStackStatusCallback(EmberStatus status)
{
  return false;
}

uint16_t halBulbPwmDriverTicksPerPeriod(void)
{
  return ticksPerPeriod;
}

uint16_t halBulbPwmDriverTicksPerMicrosecond(void)
{
  return (uint16_t) (CLOCK_FREQUENCY / 1000000);
}
/** @brief Complete
 *
 * This callback is fired when the Network Steering plugin is complete.
 *
 * @param status On success this will be set to EMBER_SUCCESS to indicate a
 * network was joined successfully. On failure this will be the status code of
 * the last join or scan attempt. Ver.: always
 * @param totalBeacons The total number of 802.15.4 beacons that were heard,
 * including beacons from different devices with the same PAN ID. Ver.: always
 * @param joinAttempts The number of join attempts that were made to get onto
 * an open Zigbee network. Ver.: always
 * @param finalState The finishing state of the network steering process. From
 * this, one is able to tell on which channel mask and with which key the
 * process was complete. Ver.: always
 */
void emberAfPluginNetworkSteeringCompleteCallback(EmberStatus status,
                                                  uint8_t totalBeacons,
                                                  uint8_t joinAttempts,
                                                  uint8_t finalState)
{
  emberAfCorePrintln("Network Steering Completed: %p (0x%X)",
                     (status == EMBER_SUCCESS ? "Join Success" : "FAILED"),
                     status);
  emberAfCorePrintln("Finishing state: 0x%X", finalState);
  emberAfCorePrintln("Beacons heard: %d\nJoin Attempts: %d", totalBeacons, joinAttempts);
}

/** @brief Main Init
 *
 * This function is called from the application's main function. It gives the
 * application a chance to do any initialization required at system startup. Any
 * code that you would normally put into the top of the application's main()
 * routine should be put into this function. This is called before the clusters,
 * plugins, and the network are initialized so some functionality is not yet
 * available.
        Note: No callback in the Application Framework is
 * associated with resource cleanup. If you are implementing your application on
 * a Unix host where resource cleanup is a consideration, we expect that you
 * will use the standard Posix system calls, including the use of atexit() and
 * handlers for signals such as SIGTERM, SIGINT, SIGCHLD, SIGPIPE and so on. If
 * you use the signal() function to register your signal handler, please mind
 * the returned value which may be an Application Framework function. If the
 * return value is non-null, please make sure that you call the returned
 * function from your handler to avoid negating the resource cleanup of the
 * Application Framework itself.
 *
 */
void driveWRGB(uint16_t white, uint16_t red, uint16_t green, uint16_t blue);

void turnLedOn(void);
void turnLedOff(void);
void GPIO_ON_fun(int x1);

void emberAfMainInitCallback(void)
{
	initGpio();
	initFrequency();
	GPIO_ON_fun(1);


}


void GPIO_ON_fun(int x)
{
	switch(x)
	{
	case 1: GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC0_PORT,BSP_BULBPWM_COLOR_CC0_PIN,gpioModePushPull,1);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC1_PORT,BSP_BULBPWM_COLOR_CC1_PIN,gpioModePushPull,0);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC2_PORT,BSP_BULBPWM_COLOR_CC2_PIN, gpioModePushPull,0);
	        break;

	case 2: GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC0_PORT,BSP_BULBPWM_COLOR_CC0_PIN,gpioModePushPull,0);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC1_PORT,BSP_BULBPWM_COLOR_CC1_PIN,gpioModePushPull,1);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC2_PORT,BSP_BULBPWM_COLOR_CC2_PIN, gpioModePushPull,0);
	        break;

	case 3: GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC1_PORT,BSP_BULBPWM_COLOR_CC1_PIN,gpioModePushPull,0);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC2_PORT,BSP_BULBPWM_COLOR_CC2_PIN, gpioModePushPull,1);
	        GPIO_PinModeSet(BSP_BULBPWM_COLOR_CC0_PORT,BSP_BULBPWM_COLOR_CC0_PIN,gpioModePushPull,0);
	        break;

	default:return ;

	}
}

void turnLedOn(void)
{
  halBulbPwmDriverBlinkOnCallback( );
}


void turnLedOff(void)
{
 halBulbPwmDriverBlinkOffCallback( );
}
//void Delay(uint16_t milliseconds)
void driveWRGB(uint16_t white, uint16_t red, uint16_t green, uint16_t blue)
{
  halBulbPwmDriverSetPwmLevel(white, BULB_PWM_WHITE);
  halBulbPwmDriverSetPwmLevel(red, BULB_PWM_RED);
  halBulbPwmDriverSetPwmLevel(green, BULB_PWM_GREEN);
  halBulbPwmDriverSetPwmLevel(blue, BULB_PWM_BLUE);
}

/** @brief Hal Button Isr
 *
 * This callback is called by the framework whenever a button is pressed on the
 * device. This callback is called within ISR context.
 *
 * @param button The button which has changed state, either BUTTON0 or BUTTON1
 * as defined in the appropriate BOARD_HEADER.  Ver.: always
 * @param state The new state of the button referenced by the button parameter,
 * either ::BUTTON_PRESSED if the button has been pressed or ::BUTTON_RELEASED
 * if the button has been released.  Ver.: always
 */
void emberAfHalButtonIsrCallback(int8u button,
                                 int8u state)
{



}



void halBulbPwmDriverSetPwmLevel(uint16_t value, uint8_t pwm)
{
  switch (pwm) {
#if HAL_BULBPWM_WHITE_ENABLE == 1
   case HAL_BULBPWM_WHITE_ID:
     TIMER_CompareBufSet(BULB_PWM_WHITE_TIMER, BULB_PWM_WHITE_CHANNEL, value);
     break;
#endif
#if HAL_BULBPWM_RED_ENABLE == 1
    case HAL_BULBPWM_RED_ID:
      TIMER_CompareBufSet(BULB_PWM_RED_TIMER, BULB_PWM_RED_CHANNEL, value);
      break;
#endif
#if HAL_BULBPWM_GREEN_ENABLE == 1
    case HAL_BULBPWM_GREEN_ID:
      TIMER_CompareBufSet(BULB_PWM_GREEN_TIMER, BULB_PWM_GREEN_CHANNEL, value);
      break;
#endif
#if HAL_BULBPWM_BLUE_ENABLE == 1
    case HAL_BULBPWM_BLUE_ID:
      TIMER_CompareBufSet(BULB_PWM_BLUE_TIMER, BULB_PWM_BLUE_CHANNEL, value);
      break;
#endif
    default:
          assert(0);
          break;
  }
}



