#!../../bin/linux-x86_64/scalerCRIO

## You may have to change scalerCRIO to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/scalerCRIO.dbd"
scalerCRIO_registerRecordDeviceDriver pdbbase


## Load record instances
#dbLoadRecords("db/xxx.db","user=raulikHost")
dbLoadRecords "db/CRIOScaler.db","BL=${EPICS_HOSTNAME}:,SC=SCALER0,DTYP=CRIO Scaler,FREQ=10000000,SMN=CRIO-SCALER"


cd ${TOP}/iocBoot/${IOC}
iocInit

dbl

## Start any sequence programs
#seq sncxxx,"user=raulikHost"


