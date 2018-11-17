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
dbLoadRecords("db/devScalerCRIO.db","BL=${EPICS_HOSTNAME},SC=SCALER_DIGITAL,DTYP=CRIO Scaler,FREQ=10000000,SMN=SCALER_DIGITAL")
dbLoadRecords ("db/devScalerCRIO.db","BL=${EPICS_HOSTNAME},SC=SCALER_ANALOG,DTYP=CRIO Scaler,FREQ=10000000,SMN=CRIO_ANALOG")
dbLoadRecords ("db/devBICRIO.db","P=${EPICS_HOSTNAME},S=BI0,PIN=Mod3/DIO0")
dbLoadRecords ("db/devAICRIO.db","P=${EPICS_HOSTNAME},S=AI0,PIN=Mod4/AI0")


cd ${TOP}/iocBoot/${IOC}
iocInit

dbl

## Start any sequence programs
#seq sncxxx,"user=raulikHost"


