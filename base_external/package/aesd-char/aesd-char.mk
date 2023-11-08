##############################################################
#
# AESD-CHAR-ASSIGNMENTS
#
###############################################################



AESD_CHAR_VERSION = 5cafc8e9c1a3d87ea41e540508f2bb559856f848

AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-sane5805.git

AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# Adding aesd char device subdirectory.
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/


# Adding all the dependencies(aesd char device).
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
