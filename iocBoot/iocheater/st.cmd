#!../../bin/linux-x86_64/heater

## You may have to change bakout to something else
## everywhere it appears in this file

#< envPaths

#cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/heater.dbd"
heater_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=control")
dbLoadRecords("db/temperature.db")
dbLoadRecords("db/reset.db")
#dbLoadRecords("db/temp.db")
#dbLoadRecords("db/test.db"

s7nodaveConfigureIsoTcpPort("bakeout-plc","10.1.22.177",0,1,0)
#s7nodaveConfigureIsoTcpPort("S7PLC","10.1.22.177",0,2,0)
s7nodaveConfigurePollGroup("bakeout-plc", "digital", 1.0, 0)
s7nodaveConfigurePollGroup("bakeout-plc", "analog" , 0.1,0)
#cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=control"
