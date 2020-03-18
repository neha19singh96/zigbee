// This file is generated by Simplicity Studio.  Please do not edit manually.
//
//

// Enclosing macro to prevent multiple inclusion
#ifndef __AF_GEN_EVENT__
#define __AF_GEN_EVENT__


// Code used to configure the cluster event mechanism
#define EMBER_AF_GENERATED_EVENT_CODE \
  extern EmberEventControl emberAfPluginFindAndBindInitiatorCheckTargetResponsesEventControl; \
  extern EmberEventControl emberAfPluginNetworkSteeringFinishSteeringEventControl; \
  extern EmberEventControl emberAfPluginReportingTickEventControl; \
  extern EmberEventControl emberAfPluginScanDispatchScanEventControl; \
  extern EmberEventControl emberAfPluginTemperatureMeasurementServerReadEventControl; \
  extern EmberEventControl emberAfPluginTemperatureSi7021InitEventControl; \
  extern EmberEventControl emberAfPluginTemperatureSi7021ReadEventControl; \
  extern EmberEventControl emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventControl; \
  extern void emberAfPluginFindAndBindInitiatorCheckTargetResponsesEventHandler(void); \
  extern void emberAfPluginNetworkSteeringFinishSteeringEventHandler(void); \
  extern void emberAfPluginReportingTickEventHandler(void); \
  extern void emberAfPluginScanDispatchScanEventHandler(void); \
  extern void emberAfPluginTemperatureMeasurementServerReadEventHandler(void); \
  extern void emberAfPluginTemperatureSi7021InitEventHandler(void); \
  extern void emberAfPluginTemperatureSi7021ReadEventHandler(void); \
  extern void emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventHandler(void); \


// EmberEventData structs used to populate the EmberEventData table
#define EMBER_AF_GENERATED_EVENTS   \
  { &emberAfPluginFindAndBindInitiatorCheckTargetResponsesEventControl, emberAfPluginFindAndBindInitiatorCheckTargetResponsesEventHandler }, \
  { &emberAfPluginNetworkSteeringFinishSteeringEventControl, emberAfPluginNetworkSteeringFinishSteeringEventHandler }, \
  { &emberAfPluginReportingTickEventControl, emberAfPluginReportingTickEventHandler }, \
  { &emberAfPluginScanDispatchScanEventControl, emberAfPluginScanDispatchScanEventHandler }, \
  { &emberAfPluginTemperatureMeasurementServerReadEventControl, emberAfPluginTemperatureMeasurementServerReadEventHandler }, \
  { &emberAfPluginTemperatureSi7021InitEventControl, emberAfPluginTemperatureSi7021InitEventHandler }, \
  { &emberAfPluginTemperatureSi7021ReadEventControl, emberAfPluginTemperatureSi7021ReadEventHandler }, \
  { &emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventControl, emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventHandler }, \


#define EMBER_AF_GENERATED_EVENT_STRINGS   \
  "Find and Bind Initiator Plugin CheckTargetResponses",  \
  "Network Steering Plugin FinishSteering",  \
  "Reporting Plugin Tick",  \
  "Scan Dispatch Plugin Scan",  \
  "Temperature Measurement Server Cluster Plugin Read",  \
  "Temperature Si7021 Plugin Init",  \
  "Temperature Si7021 Plugin Read",  \
  "Update TC Link Key Plugin BeginTcLinkKeyUpdate",  \


#endif // __AF_GEN_EVENT__
