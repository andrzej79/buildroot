################################################################################
#
# btop
#
################################################################################

BTOP_VERSION = 1.4.5
BTOP_SITE = $(call github,aristocratos,btop,v$(BTOP_VERSION))
BTOP_LICENSE = Apache-2.0
BTOP_LICENSE_FILES = LICENSE

BTOP_SUPPORTS_IN_SOURCE_BUILD = NO

# buildroot sets CMAKE_SYSTEM_NAME=Buildroot, so CMake does not define LINUX itself
BTOP_CONF_OPTS = \
	-DLINUX=ON \
	-DBTOP_GPU=OFF \
	-DBTOP_LTO=OFF \
	-DBTOP_STATIC=OFF

$(eval $(cmake-package))
