################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c 

OBJS += \
./green-power-common/green-power-common.o 

C_DEPS += \
./green-power-common/green-power-common.d 


# Each subdirectory must supply rules for building sources it contributes
green-power-common/green-power-common.o: /home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=gnu99 '-DCONFIGURATION_HEADER="app/framework/util/config.h"' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DCORTEXM3_EFR32_MICRO=1' '-DAPP_GECKO_INFO_PAGE_BTL=1' '-DATTRIBUTE_STORAGE_CONFIGURATION="Z3Li_endpoint_config.h"' '-DCORTEXM3_EFR32MG12P332F1024GL125=1' '-DCORTEXM3_EFR32MG12P332F1024GL125_MICRO=1' '-DGENERATED_TOKEN_HEADER="Z3Li_tokens.h"' '-DZA_GENERATED_HEADER="Z3Li.h"' '-DPLATFORM_HEADER="platform/base/hal/micro/cortexm3/compiler/gcc.h"' '-DEFR32MG12P=1' '-DEFR32MG12P332F1024GL125=1' '-DEFR32_SERIES1_CONFIG2_MICRO=1' '-DLOCKBITS_IN_MAINFLASH_SIZE=0' '-DPSSTORE_SIZE=0' '-DLONGTOKEN_SIZE=0' '-DHAL_CONFIG=1' '-DEMBER_AF_USE_HWCONF=1' '-DNO_LED=1' '-DEMBER_AF_API_EMBER_TYPES="stack/include/ember-types.h"' '-DEMBER_AF_API_DEBUG_PRINT="app/framework/util/print.h"' '-DEMBER_AF_API_AF_HEADER="app/framework/include/af.h"' '-DEMBER_AF_API_AF_SECURITY_HEADER="app/framework/security/af-security.h"' '-DEMBER_AF_API_NEIGHBOR_HEADER="stack/include/stack-info.h"' '-DEMBER_STACK_ZIGBEE=1' '-DMBEDTLS_CONFIG_FILE="mbedtls-config-generated.h"' '-DEMLIB_USER_CONFIG=1' '-DAPPLICATION_TOKEN_HEADER="znet-token.h"' '-DAPPLICATION_MFG_TOKEN_HEADER="znet-mfg-token.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE="configs/config-device-acceleration.h"' '-DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE="config-device-acceleration-app.h"' '-DPHY_RAIL=1' -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal//plugin" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal//micro/cortexm3/efm32" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal//micro/cortexm3/efm32/config" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal//micro/cortexm3/efm32/efr32" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../CMSIS/Include" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/common/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/config" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/dmadrv/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/gpiointerrupt/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../service/sleeptimer/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../service/sleeptimer/config" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../common/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/sleep/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/spidrv/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/tempdrv/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/uartdrv/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emdrv/ustimer/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../emlib/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../middleware/glib" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../middleware/glib/glib" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../radio/rail_lib/plugin" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base//../radio/rail_lib/chip/efr32/rf/rfprotocol/ieee802154/cortex" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/halconfig/inc/hal-config" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//hardware/module/config" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/halconfig" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"/home/neha/SimplicityStudio/v4_workspace/Z3Li" -I"/home/neha/SimplicityStudio/v4_workspace/Z3Li/hal-config" -I"/home/neha/SimplicityStudio/v4_workspace/Z3Li/external-generated-files" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/base/hal/micro/cortexm3/efm32" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/bootloader/api" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//protocol/zigbee/app/framework" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//protocol/zigbee" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//protocol/zigbee/stack" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//protocol/zigbee/app/util" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//protocol/zigbee/app/framework/include" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/bootloader" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/common" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/plugin/coexistence/common" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/plugin/coexistence/hal/efr32" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/protocol/ble" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/protocol/ieee802154" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/radio/rail_lib/protocol/zwave" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//platform/service/mpu/inc" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//util/plugin/plugin-common/mbedtls" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//util/third_party/mbedtls" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//util/third_party/mbedtls/include" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//util/third_party/mbedtls/include/mbedtls" -I"/home/neha/SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7//util/third_party/mbedtls/sl_crypto/include" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"green-power-common/green-power-common.d" -MT"green-power-common/green-power-common.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


