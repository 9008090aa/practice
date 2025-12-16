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

PROD_IOC = DP41
# DP41.dbd will be created and installed
DBD += DP41.dbd

# DP41.dbd will be made up from these files:
DP41_DBD += base.dbd

# Include dbd files from all support applications:
DP41_DBD += asyn.dbd
DP41_DBD += DP41Sup.dbd 
DP41_DBD += drvAsynSerialPort.dbd 

# Add all the support libraries needed by this IOC
DP41_LIBS += asyn
DP41_LIBS += DP41Sup 

# DP41_registerRecordDeviceDriver.cpp derives from DP41.dbd
DP41_SRCS += DP41_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
DP41_SRCS_DEFAULT += DP41Main.cpp
DP41_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#DP41_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
DP41_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

