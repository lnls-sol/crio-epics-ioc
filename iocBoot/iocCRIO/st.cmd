#!../../bin/linux-x86_64/CRIO

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/CRIO.dbd"
CRIO_registerRecordDeviceDriver pdbbase

crioSupSetup("/usr/local/epics/apps/config/crio/cfg.ini" , 1)

## Load record instances

cd ${TOP}/iocBoot/${IOC}

dbLoadTemplate "bi.template"
dbLoadTemplate "bo.template"
dbLoadTemplate "ai.template"
dbLoadTemplate "ao.template"
dbLoadTemplate "scaler.template"


iocInit

dbl



