// This file is generated by Simplicity Studio.  Please do not edit manually.
//
//

// Enclosing macro to prevent multiple inclusion
#ifndef SILABS_ZNET_CONFIG
#define SILABS_ZNET_CONFIG


/**** Included Header Section ****/



// Networks
#define EM_AF_GENERATED_NETWORK_TYPES { \
  EM_AF_NETWORK_TYPE_ZIGBEE_PRO, /* Primary */ \
}
#define EM_AF_GENERATED_ZIGBEE_PRO_NETWORKS { \
  { \
    /* Primary */ \
    ZA_ROUTER, \
    EMBER_AF_SECURITY_PROFILE_Z3, \
  }, \
}
#define EM_AF_GENERATED_NETWORK_STRINGS  \
  "Primary (pro)", \
/**** ZCL Section ****/
#define ZA_PROMPT "ZigbeeMinimalSoc_tempsen"
#define ZCL_USING_BASIC_CLUSTER_SERVER
#define ZCL_USING_IDENTIFY_CLUSTER_CLIENT
#define ZCL_USING_IDENTIFY_CLUSTER_SERVER
#define ZCL_USING_TEMP_MEASUREMENT_CLUSTER_SERVER
#define EMBER_AF_MANUFACTURER_CODE 0x1002
#define EMBER_AF_DEFAULT_RESPONSE_POLICY_ALWAYS

/**** Cluster endpoint counts ****/
#define EMBER_AF_BASIC_CLUSTER_SERVER_ENDPOINT_COUNT (1)
#define EMBER_AF_IDENTIFY_CLUSTER_CLIENT_ENDPOINT_COUNT (1)
#define EMBER_AF_IDENTIFY_CLUSTER_SERVER_ENDPOINT_COUNT (1)
#define EMBER_AF_TEMP_MEASUREMENT_CLUSTER_SERVER_ENDPOINT_COUNT (1)

/**** Cluster Endpoint Summaries ****/
#define EMBER_AF_MAX_SERVER_CLUSTER_COUNT (3)
#define EMBER_AF_MAX_CLIENT_CLUSTER_COUNT (1)
#define EMBER_AF_MAX_TOTAL_CLUSTER_COUNT (4)

/**** CLI Section ****/
#define EMBER_AF_GENERATE_CLI

/**** Security Section ****/
#define EMBER_AF_HAS_SECURITY_PROFILE_Z3

/**** Network Section ****/
#define EMBER_SUPPORTED_NETWORKS (1)
#define EMBER_AF_NETWORK_INDEX_PRIMARY (0)
#define EMBER_AF_DEFAULT_NETWORK_INDEX EMBER_AF_NETWORK_INDEX_PRIMARY
#define EMBER_AF_HAS_ROUTER_NETWORK
#define EMBER_AF_HAS_RX_ON_WHEN_IDLE_NETWORK
#define EMBER_AF_TX_POWER_MODE EMBER_TX_POWER_MODE_USE_TOKEN

/**** Callback Section ****/
#define EMBER_CALLBACK_STACK_STATUS
#define EMBER_CALLBACK_MAIN_INIT
#define EMBER_CALLBACK_ENERGY_SCAN_RESULT
#define EMBER_CALLBACK_SCAN_COMPLETE
#define EMBER_CALLBACK_NETWORK_FOUND
#define EMBER_CALLBACK_CONFIGURE_REPORTING_COMMAND
#define EMBER_CALLBACK_READ_REPORTING_CONFIGURATION_COMMAND
#define EMBER_CALLBACK_CLEAR_REPORT_TABLE
#define EMBER_CALLBACK_REPORTING_ATTRIBUTE_CHANGE
#define EMBER_CALLBACK_TEMPERATURE_READING_COMPLETE
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_QUERY_RESPONSE
/**** Debug printing section ****/

// Global switch
#define EMBER_AF_PRINT_ENABLE
// Individual areas
#define EMBER_AF_PRINT_CORE 0x0001
#define EMBER_AF_PRINT_DEBUG 0x0002
#define EMBER_AF_PRINT_APP 0x0004
#define EMBER_AF_PRINT_ZDO 0x0008
#define EMBER_AF_PRINT_BITS { 0x0F }
#define EMBER_AF_PRINT_NAMES { \
  "Core",\
  "Debug",\
  "Application",\
  "ZDO (ZigBee Device Object)",\
  NULL\
}
#define EMBER_AF_PRINT_NAME_NUMBER 4


#define EMBER_AF_SUPPORT_COMMAND_DISCOVERY


// Generated plugin macros

// Use this macro to check if Antenna Stub plugin is included
#define EMBER_AF_PLUGIN_ANTENNA_STUB

// Use this macro to check if Binding Table Library plugin is included
#define EMBER_AF_PLUGIN_BINDING_TABLE_LIBRARY
// User options for plugin Binding Table Library
#define EMBER_BINDING_TABLE_SIZE 10

// Use this macro to check if CCM* Encryption plugin is included
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION
// User options for plugin CCM* Encryption
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION_SOFTWARE_CCM
#define USE_SOFTWARE_CCM

// Use this macro to check if Radio Coexistence Stub plugin is included
#define EMBER_AF_PLUGIN_COEXISTENCE_STUB

// Use this macro to check if Debug Basic Library plugin is included
#define EMBER_AF_PLUGIN_DEBUG_BASIC_LIBRARY

// Use this macro to check if Debug JTAG plugin is included
#define EMBER_AF_PLUGIN_DEBUG_JTAG

// Use this macro to check if Ember Minimal Printf plugin is included
#define EMBER_AF_PLUGIN_EMBER_MINIMAL_PRINTF

// Use this macro to check if Find and Bind Initiator plugin is included
#define EMBER_AF_PLUGIN_FIND_AND_BIND_INITIATOR
// User options for plugin Find and Bind Initiator
#define EMBER_AF_PLUGIN_FIND_AND_BIND_INITIATOR_TARGET_RESPONSES_COUNT 5
#define EMBER_AF_PLUGIN_FIND_AND_BIND_INITIATOR_TARGET_RESPONSES_DELAY_MS MILLISECOND_TICKS_PER_SECOND*3

// Use this macro to check if HAL Library plugin is included
#define EMBER_AF_PLUGIN_HAL_LIBRARY

// Use this macro to check if I2C Driver plugin is included
#define EMBER_AF_PLUGIN_I2C_DRIVER
// User options for plugin I2C Driver
#define EMBER_AF_PLUGIN_I2C_DRIVER_TRANSACTION_TIMEOUT 50

// Use this macro to check if mbed TLS plugin is included
#define EMBER_AF_PLUGIN_MBEDTLS
// User options for plugin mbed TLS
#define EMBER_AF_PLUGIN_MBEDTLS_CONF_DEVICE_ACCELERATION
#define EMBER_AF_PLUGIN_MBEDTLS_CONF_DEVICE_ACCELERATION_APP

// Use this macro to check if Network Steering plugin is included
#define EMBER_AF_PLUGIN_NETWORK_STEERING
// User options for plugin Network Steering
#define EMBER_AF_PLUGIN_NETWORK_STEERING_CHANNEL_MASK 0x0318C800
#define EMBER_AF_PLUGIN_NETWORK_STEERING_RADIO_TX_POWER 3
#define EMBER_AF_PLUGIN_NETWORK_STEERING_SCAN_DURATION 5
#define EMBER_AF_PLUGIN_NETWORK_STEERING_COMMISSIONING_TIME_S 180

// Use this macro to check if NVM3 Library plugin is included
#define EMBER_AF_PLUGIN_NVM3
// User options for plugin NVM3 Library
#define EMBER_AF_PLUGIN_NVM3_FLASH_PAGES 18
#define EMBER_AF_PLUGIN_NVM3_CACHE_SIZE 200
#define EMBER_AF_PLUGIN_NVM3_MAX_OBJECT_SIZE 254
#define EMBER_AF_PLUGIN_NVM3_USER_REPACK_HEADROOM 0

// Use this macro to check if Packet Validate Library plugin is included
#define EMBER_AF_PLUGIN_PACKET_VALIDATE_LIBRARY

// Use this macro to check if RAIL Library plugin is included
#define EMBER_AF_PLUGIN_RAIL_LIBRARY
// User options for plugin RAIL Library
#define EMBER_AF_PLUGIN_RAIL_LIBRARY_RAILPHYDEF 1

// Use this macro to check if Reporting plugin is included
#define EMBER_AF_PLUGIN_REPORTING
// User options for plugin Reporting
#define EMBER_AF_PLUGIN_REPORTING_TABLE_SIZE 5
#define EMBER_AF_PLUGIN_REPORTING_ENABLE_GROUP_BOUND_REPORTS

// Use this macro to check if Scan Dispatch plugin is included
#define EMBER_AF_PLUGIN_SCAN_DISPATCH
// User options for plugin Scan Dispatch
#define EMBER_AF_PLUGIN_SCAN_DISPATCH_SCAN_QUEUE_SIZE 10

// Use this macro to check if Security Core Library plugin is included
#define EMBER_AF_PLUGIN_SECURITY_LIBRARY_CORE
// User options for plugin Security Core Library
#define EMBER_TRANSIENT_KEY_TIMEOUT_S 300

// Use this macro to check if Serial plugin is included
#define EMBER_AF_PLUGIN_SERIAL

// Use this macro to check if Simulated EEPROM version 2 to NVM3 Upgrade Stub plugin is included
#define EMBER_AF_PLUGIN_SIM_EEPROM2_TO_NVM3_UPGRADE_STUB

// Use this macro to check if Simple Main plugin is included
#define EMBER_AF_PLUGIN_SIMPLE_MAIN

// Use this macro to check if Strong Random plugin is included
#define EMBER_AF_PLUGIN_STRONG_RANDOM
// User options for plugin Strong Random
#define EMBER_AF_PLUGIN_STRONG_RANDOM_RADIO_PRNG
#define USE_RADIO_API_FOR_TRNG

// Use this macro to check if Temperature Measurement Server Cluster plugin is included
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER
// User options for plugin Temperature Measurement Server Cluster
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_MAX_MEASUREMENT_FREQUENCY_S 5
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_DEFAULT_REPORTABLE_TEMPERATURE_CHANGE_M_C 500
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_OVER_TEMPERATURE
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_OVER_TEMPERATURE_ASSERT_WARNING_THRESHOLD 55
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_OVER_TEMPERATURE_DEASSERT_WARNING_THRESHOLD 50
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_OVER_TEMPERATURE_ASSERT_CRITICAL_THRESHOLD 60
#define EMBER_AF_PLUGIN_TEMPERATURE_MEASUREMENT_SERVER_OVER_TEMPERATURE_DEASSERT_CRITICAL_THRESHOLD 55

// Use this macro to check if Temperature Si7021 plugin is included
#define EMBER_AF_PLUGIN_TEMPERATURE_SI7021

// Use this macro to check if Update TC Link Key plugin is included
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY
// User options for plugin Update TC Link Key
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY_MAX_ATTEMPTS 3

// Use this macro to check if ZCL Framework Core plugin is included
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE
// User options for plugin ZCL Framework Core
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE_CLI_ENABLED
#define ZA_CLI_FULL

// Use this macro to check if ZigBee PRO Stack Library plugin is included
#define EMBER_AF_PLUGIN_ZIGBEE_PRO_LIBRARY
// User options for plugin ZigBee PRO Stack Library
#define EMBER_MAX_END_DEVICE_CHILDREN 6
#define EMBER_PACKET_BUFFER_COUNT 75
#define EMBER_END_DEVICE_KEEP_ALIVE_SUPPORT_MODE EMBER_KEEP_ALIVE_SUPPORT_ALL
#define EMBER_END_DEVICE_POLL_TIMEOUT MINUTES_256
#define EMBER_END_DEVICE_POLL_TIMEOUT_SHIFT 6
#define EMBER_LINK_POWER_DELTA_INTERVAL 300
#define EMBER_APS_UNICAST_MESSAGE_COUNT 10
#define EMBER_BROADCAST_TABLE_SIZE 15
#define EMBER_NEIGHBOR_TABLE_SIZE 16


// Generated API headers

// API antenna from Antenna Stub plugin
#define EMBER_AF_API_ANTENNA "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/antenna/antenna.h"

// API coexistence from Radio Coexistence Stub plugin
#define EMBER_AF_API_COEXISTENCE "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154/coexistence-802154.h"

// API find-and-bind-initiator from Find and Bind Initiator plugin
#define EMBER_AF_API_FIND_AND_BIND_INITIATOR "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/find-and-bind-initiator/find-and-bind-initiator.h"

// API i2c-driver from I2C Driver plugin
#define EMBER_AF_API_I2C_DRIVER "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/i2c-driver/i2c-driver.h"

// API network-steering from Network Steering plugin
#define EMBER_AF_API_NETWORK_STEERING "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering.h"

// API nvm3 from NVM3 Library plugin
#define EMBER_AF_API_NVM3 "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/nvm3/nvm3-token.h"

// API rail-library from RAIL Library plugin
#define EMBER_AF_API_RAIL_LIBRARY "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/common/rail.h"

// API scan-dispatch from Scan Dispatch plugin
#define EMBER_AF_API_SCAN_DISPATCH "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.h"

// API serial from Serial plugin
#define EMBER_AF_API_SERIAL "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/serial.h"

// API temperature from Temperature Si7021 plugin
#define EMBER_AF_API_TEMPERATURE "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/temperature/temperature.h"

// API update-tc-link-key from Update TC Link Key plugin
#define EMBER_AF_API_UPDATE_TC_LINK_KEY "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.h"

// API command-interpreter2 from ZCL Framework Core plugin
#define EMBER_AF_API_COMMAND_INTERPRETER2 "../../../SIMPLICITY_STUDIO/SimplicityStudio-v4/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/serial/command-interpreter2.h"


// Custom macros
#ifdef TRANSITION_TIME_DS
#undef TRANSITION_TIME_DS
#endif
#define TRANSITION_TIME_DS 20

#ifdef FINDING_AND_BINDING_DELAY_MS
#undef FINDING_AND_BINDING_DELAY_MS
#endif
#define FINDING_AND_BINDING_DELAY_MS 3000



#endif // SILABS_ZNET_CONFIG
