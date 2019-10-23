TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = CRIO

# Shared Memory Libraries

# scalerCRIO.dbd will be created and installed
DBD += CRIO.dbd

# scalerCRIO.dbd will be made up from these files:
#base.dbd not required for new epics 3.15
#CRIO_DBD += base.dbd
CRIO_DBD += std.dbd
CRIO_DBD += stdCRIO.dbd
CRIO_DBD += asSupport.dbd

# Include dbd files from all support applications:
#scalerCRIO_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
CRIO_LIBS += std
CRIO_LIBS += asyn
CRIO_LIBS += devSupCRIO
CRIO_LIBS += autosave

+# Needed for recsync
+CRIO_LIBS += reccaster
+CRIO_DBD += reccaster.dbd

# scalerCRIO_registerRecordDeviceDriver.cpp derives from CRIO.dbd
CRIO_SRCS += CRIO_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
CRIO_SRCS_DEFAULT += CRIOMain.cpp
CRIO_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#CRIO_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
CRIO_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


