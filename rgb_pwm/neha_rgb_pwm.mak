# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = neha_rgb_pwm

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/..

SOURCE_FILES = \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/sleep/src/sleep.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_adc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_cmu.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_core.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_cryotimer.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_emu.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_eusart.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_gpio.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_i2c.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_ldma.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_leuart.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_msc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_prs.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_rmu.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_rtcc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_se.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_system.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_timer.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_usart.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/src/em_wdog.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c \
./znet-bookkeeping.c \
./call-command-handler.c \
./callback-stub.c \
./stack-handler-stub.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/button.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/buzzer/buzzer-efr32.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/generic/crc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../../stack/config/ember-configuration.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/generic/endian.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/led.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util/common/library.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/generic/mem-util.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/micro-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/micro.c \
./znet-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/generic/random.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util/security/security-address-cache.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/ember-base-configuration.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/generic/token-def.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/token.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/ext-device.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-library.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/bootloader-interface-app.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/bootloader/api/btl_interface.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/bootloader/api/btl_interface_storage.c \
  ../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/uartdrv/src/uartdrv.c \
 \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/antenna-stub/antenna-stub.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/basic/basic.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin-soc/bulb-pwm-cli/bulb-pwm-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/plugin/plugin-common/bulb-pwm-driver/bulb-pwm-driver-efr32.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/plugin/plugin-common/bulb-pwm-driver/bulb-pwm-driver-blink.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/stack/framework/ccm-star.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coexistence-802154.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coulomb-counter-802154.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/debug/rtt/SEGGER_RTT.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/debug-jtag/debug-jtag-efr32.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/serial/ember-printf.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/groups-server/groups-server.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/groups-server/groups-server-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/hal-config.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/hal-config-gpio.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/service/mpu/src/sl_mpu.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/identify/identify.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/identify/identify-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin-soc/led-rgb-pwm/led-rgb-pwm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/level-control/level-control.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/aes_aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/crypto_aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/crypto_ble.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/crypto_ecp.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/crypto_management.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/crypto_sha.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_ccm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_cmac.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_ecp.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_gcm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_management.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_sha.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/cryptoacc_trng.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/entropy_adc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/entropy_rail.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/radioaes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/radioaes_aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/radioaes_ble.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_ccm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_cmac.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_ecp.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_gcm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_jpake.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_management.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_sha.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/se_trng.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/shax.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/src/trng.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/aes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/aesni.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/arc4.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/asn1parse.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/asn1write.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/base64.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/bignum.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/blowfish.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/camellia.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ccm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/certs.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/cipher.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/cipher_wrap.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/cmac.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ctr_drbg.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/debug.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/des.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/dhm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ecdh.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ecdsa.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ecjpake.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ecp.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ecp_curves.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/entropy.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/entropy_poll.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/error.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/gcm.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/havege.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/hmac_drbg.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/md.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/md2.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/md4.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/md5.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/md_wrap.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/memory_buffer_alloc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/net_sockets.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/oid.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/padlock.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pem.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pk.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pk_wrap.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pkcs11.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pkcs12.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pkcs5.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pkparse.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/pkwrite.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ripemd160.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/rsa.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/rsa_internal.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/sha1.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/sha256.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/sha512.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_cache.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_ciphersuites.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_cookie.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_srv.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_ticket.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/ssl_tls.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/threading.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/timing.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/version.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/version_features.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509_create.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509_crl.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509_crt.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509_csr.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509write_crt.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/x509write_csr.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/library/xtea.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/network-steering/network-steering-soc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/nvm3/src/nvm3_lock.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/nvm3/src/nvm3_default.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/nvm3/src/nvm3_hal_flash.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/reporting/reporting.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/scenes/scenes.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/scenes/scenes-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin/serial/serial.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/simple-main/simple-main.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/stack/framework/strong-random-api.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/core-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/network-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/option-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/plugin-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/security-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/zcl-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/cli/zdo-cli.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/security/af-node.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/security/af-security-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/security/af-trust-center.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/security/crypto-state.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/af-event.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/af-main-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/attribute-size.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/attribute-storage.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/attribute-table.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/client-api.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/message.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/multi-network.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/print.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/print-formatter.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/process-cluster-message.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/process-global-message.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/service-discovery-common.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/time-util.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/util.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/af-main-soc.c \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/util/service-discovery-soc.c \
 \
neha_rgb_pwm_callbacks.c \ \

LIB_FILES = \
 \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg12p-rail/binding-table-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-163k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-163k1-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-283k1-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-283k1-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-stub-library-cortexm3-gcc-efr32mg12p-rail/cbke-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-sign-stub.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-stub.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg12p-rail/cbke-library-dsa-verify-283k1-stub.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg12p-rail/debug-basic-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/debug-extended-stub-library-cortexm3-gcc-efr32mg12p-rail/debug-extended-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/end-device-bind-stub-library-cortexm3-gcc-efr32mg12p-rail/end-device-bind-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/gp-stub-library-cortexm3-gcc-efr32mg12p-rail/gp-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/hal-library-cortexm3-gcc-efr32mg12p-rail/hal-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg12p-rail/install-code-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/multi-network-stub-library-cortexm3-gcc-efr32mg12p-rail/multi-network-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/nvm3/lib/libnvm3_CM4_gcc.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg12p-rail/packet-validate-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/security-library-link-keys-stub-cortexm3-gcc-efr32mg12p-rail/security-library-link-keys-stub.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/sim-eeprom2-to-nvm3-upgrade-stub-library-cortexm3-gcc-efr32mg12p-rail/sim-eeprom2-to-nvm3-upgrade-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/source-route-stub-library-cortexm3-gcc-efr32mg12p-rail/source-route-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg12p-rail/zigbee-pro-stack.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg12p-rail/zigbee-r22-support-stub-library.a \
../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/build/zll-stub-library-cortexm3-gcc-efr32mg12p-rail/zll-stub-library.a \
 \
 \

CDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P432F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"neha_rgb_pwm_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"neha_rgb_pwm_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"neha_rgb_pwm.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_NVM3 \
  -DNVM3_DEFAULT_NVM_SIZE=NVM3_FLASH_PAGES*FLASH_PAGE_SIZE \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=18 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=18 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
 \

ASMDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P432F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"neha_rgb_pwm_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"neha_rgb_pwm_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"neha_rgb_pwm.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_NVM3 \
  -DNVM3_DEFAULT_NVM_SIZE=NVM3_FLASH_PAGES*FLASH_PAGE_SIZE \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=18 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=18 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
 \

CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7 \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../.. \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../../stack \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/../util \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/protocol/zigbee/app/framework/include \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/plugin \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/.. \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32 \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/config \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../CMSIS/Include \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Include \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/common/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/config \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../service/sleeptimer/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../service/sleeptimer/config \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../common/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/sleep/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/spidrv/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emdrv/ustimer/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../emlib/inc \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../middleware/glib \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../middleware/glib/glib \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/base/hal/../../radio/rail_lib/plugin \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/halconfig/inc/hal-config \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/module/config \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/halconfig \
-I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/bsp \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/bootloader \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emdrv/nvm3/inc \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/chip/efr32/efr32xg1x \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/common \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/protocol/ble \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/radio/rail_lib/protocol/zwave \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/platform/service/mpu/inc \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/plugin/plugin-common/mbedtls \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/include \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/include/mbedtls \
  -I../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.7/util/third_party/mbedtls/sl_crypto/include \
  -Ihal-config \
 \

TARGET = neha_rgb_pwm

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)))

ARCHITECTUREID = efr32~family[m]~series[1]~device_configuration[2]~performance[p]~radio[432]~flash[1024k]~temp[g]~package[l]~pins[125]~!module+brd4161a+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=36864" \
	-Xlinker --defsym="PSSTORE_SIZE=0" \
	-Xlinker --defsym="LONGTOKEN_SIZE=0" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=0" \
	-Xlinker --defsym="FLASH_SIZE=1048576" \
	-Xlinker --defsym="RAM_SIZE=262144" \
	-Xlinker --defsym="FLASH_PAGE_SIZE=2048" \
	-Xlinker --defsym="APP_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --defsym="HEADER_SIZE=512" \
	-Xlinker --defsym="BTL_SIZE=16384" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config $(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def APP_GECKO_INFO_PAGE_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)
