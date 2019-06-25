#!/home/ABTLUS/SOL/crio-ioc/bin/linux-x86_64/CRIO


epicsEnvSet("TOP","/usr/local/epics/apps/crio-ioc")
epicsEnvSet("EPICS_BASE","/usr/local/epics-nfs/base/R3.15.6")
epicsEnvSet("IOC","iocCRIO")
epicsEnvSet("CONFIG","/usr/local/epics/apps/config/crio-ioc")
epicsEnvSet("AUTOSAVE","/opt/autosave")


cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/CRIO.dbd"
CRIO_registerRecordDeviceDriver pdbbase


set_requestfile_path($(CONFIG))
set_savefile_path($(AUTOSAVE))
set_pass1_restoreFile("crioioc.sav", "")


crioSupSetup("${CONFIG}/cfg.ini" , 1)

## Load record instances

cd ${TOP}/iocBoot/${IOC}



dbLoadTemplate "${CONFIG}/bi.db.sub"
dbLoadTemplate "${CONFIG}/bo.db.sub"
dbLoadTemplate "${CONFIG}/ai.db.sub"
dbLoadTemplate "${CONFIG}/ao.db.sub"
dbLoadTemplate "${CONFIG}/scaler.db.sub"
dbLoadTemplate "${CONFIG}/waveform.db.sub"
iocInit

#Set initial value to a PV
< "$(CONFIG)/init-pv.cmd"
#dbpf SOL:CRIO4:9263A:AO0 7

create_monitor_set("crioioc.req", 1, "")

dbl
