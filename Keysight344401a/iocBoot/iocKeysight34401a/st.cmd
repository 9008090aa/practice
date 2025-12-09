#!../../bin/linux-x86_64/Keysight34401a

#- SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change Keysight34401a to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Keysight34401a.dbd"
Keysight34401a_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/Keysight34401a.db","dev=34401a")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}")
drvAsynSerialPortConfigure("34401a","/dev/ttyxxx",0,0,0)
asynSetOption("34401a", -1, "baud","9600")
asynSetOption("34401a", -1, "bits","8")
asynSetOption("34401a", -1, "parity", "none") 
asynSetOption("34401a", -1, "stop","1")
asynSetOption("34401a", -1, "clocal","Y")
asynSetOption("34401a", -1, "crtscts","N")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=xxx"
