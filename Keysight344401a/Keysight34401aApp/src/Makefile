# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Keysight34401a
# Keysight34401a.dbd will be created and installed
DBD += Keysight34401a.dbd

# Keysight34401a.dbd will be made up from these files:
Keysight34401a_DBD += base.dbd

# Include dbd files from all support applications:
Keysight34401a_DBD += asyn.dbd
Keysight34401a_DBD += stream.dbd
Keysight34401a_DBD += drvAsynSerialPort.dbd
# Add all the support libraries needed by this IOC
Keysight34401a_LIBS += asyn
Keysight34401a_LIBS += stream

# Keysight34401a_registerRecordDeviceDriver.cpp derives from Keysight34401a.dbd
Keysight34401a_SRCS += Keysight34401a_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Keysight34401a_SRCS_DEFAULT += Keysight34401aMain.cpp
Keysight34401a_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Keysight34401a_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Keysight34401a_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

