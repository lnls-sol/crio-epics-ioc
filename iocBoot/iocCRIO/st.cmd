#!../../bin/linux-x86_64/CRIO

## You may have to change CRIO to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/CRIO.dbd"
CRIO_registerRecordDeviceDriver pdbbase

crioSupSetup("/home/ABTLUS/dawood.alnajjar/work/git/crio-linux-libs/cfg/cfg.ini" , 1)

## Load record instances
dbLoadRecords("db/devScalerCRIO.db","BL=${EPICS_HOSTNAME},SC=SCALER_DIGITAL,DTYP=CRIO Scaler,FREQ=10000000,SMN=SCALER_DIGITAL")
dbLoadRecords ("db/devScalerCRIO.db","BL=${EPICS_HOSTNAME},SC=SCALER_ANALOG,DTYP=CRIO Scaler,FREQ=10000000,SMN=CRIO_ANALOG")
dbLoadRecords ("db/devBICRIO.db","P=${EPICS_HOSTNAME},S=BI0,PIN=Mod3/DIO0")
dbLoadRecords ("db/devAICRIO.db","P=${EPICS_HOSTNAME},S=AI0,PIN=Mod4/AI0")
dbLoadRecords ("db/devAOCRIO.db","P=${EPICS_HOSTNAME},S=AO0,PIN=Mod5/AO0")
dbLoadRecords ("db/devBOCRIO.db","P=${EPICS_HOSTNAME},S=BO0,PIN=Mod1/DIO0")


cd ${TOP}/iocBoot/${IOC}
iocInit

dbl



