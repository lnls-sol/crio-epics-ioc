TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
#DB += xxx.db
DB += devScalerCRIO.db.template
DB += devWAVEFORMCRIO.db.template
DB += devBICRIO.db.template
DB += devAICRIO.db.template
DB += devAOCRIO.db.template
DB += devBOCRIO.db.template
DB += devMBBOCRIO.db.template
DB += devMBBICRIO.db.template

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

