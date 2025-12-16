#!../../bin/linux-x86_64/GID

#- SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change GID to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/GID.dbd"
GID_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/GID.db","P=GID:,R=,L=0,A=0")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}")
drvAsynSerialPortConfigure("L0","/dev/ttyACM0",0,0,0)
asynSetOption("L0", -1, "baud","9600")
asynSetOption("L0", -1, "bits","8")
asynSetOption("L0", -1, "parity", "none") 
asynSetOption("L0", -1, "stop","1")
asynSetOption("L0", -1, "clocal","Y")
asynSetOption("L0", -1, "crtscts","N")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=xxx"
