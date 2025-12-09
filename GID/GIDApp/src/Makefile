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

PROD_IOC = GID
# GID.dbd will be created and installed
DBD += GID.dbd

# GID.dbd will be made up from these files:
GID_DBD += base.dbd

# Include dbd files from all support applications:
GID_DBD += asyn.dbd
GID_DBD += stream.dbd
# Add all the support libraries needed by this IOC
GID_LIBS += asyn
GID_LIBS += stream

# GID_registerRecordDeviceDriver.cpp derives from GID.dbd
GID_SRCS += GID_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
GID_SRCS_DEFAULT += GIDMain.cpp
GID_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#GID_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
GID_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

