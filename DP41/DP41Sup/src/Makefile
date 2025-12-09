# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += DP41Sup

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install DP41.dbd into <top>/dbd
DBD += DP41Sup.dbd

# specify all source files to be compiled and added to the library
DP41Sup_SRCS += DP41.c

DP41Sup_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

