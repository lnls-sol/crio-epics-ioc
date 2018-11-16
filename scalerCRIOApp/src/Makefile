TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = scalerCRIO

# Shared Memory Libraries

# scalerCRIO.dbd will be created and installed
DBD += scalerCRIO.dbd

# scalerCRIO.dbd will be made up from these files:
scalerCRIO_DBD += base.dbd
scalerCRIO_DBD += std.dbd
scalerCRIO_DBD += stdCRIO.dbd

# Include dbd files from all support applications:
#scalerCRIO_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#scalerCRIO_LIBS += xxx
scalerCRIO_LIBS += std
scalerCRIO_SYS_LIBS += CrioLinux
scalerCRIO_LIBS += asyn
scalerCRIO_LIBS += devScalerCRIO

# scalerCRIO_registerRecordDeviceDriver.cpp derives from scalerCRIO.dbd
scalerCRIO_SRCS += scalerCRIO_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
scalerCRIO_SRCS_DEFAULT += scalerCRIOMain.cpp
scalerCRIO_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#scalerCRIO_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
scalerCRIO_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


