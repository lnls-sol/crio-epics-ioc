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

cd ${TOP}/iocBoot/${IOC}

dbLoadTemplate "bi.template"
dbLoadTemplate "bo.template"
dbLoadTemplate "ai.template"
dbLoadTemplate "ao.template"
dbLoadTemplate "scaler.template"


iocInit

dbl



