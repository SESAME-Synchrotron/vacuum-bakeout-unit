TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = heater
# heater.dbd will be created and installed
DBD += heater.dbd

# heater.dbd will be made up from these files:
heater_DBD += base.dbd

# Include dbd files from all support applications:
#heater_DBD += xxx.dbd
heater_DBD += s7nodave.dbd
# Add all the support libraries needed by this IOC
#heater_LIBS += xxx
heater_LIBS += s7nodave
# heater_registerRecordDeviceDriver.cpp derives from heater.dbd
heater_SRCS += heater_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
heater_SRCS_DEFAULT += heaterMain.cpp
heater_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#heater_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
heater_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

