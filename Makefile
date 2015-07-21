export ARCHS = armv7 arm64
include theos/makefiles/common.mk

THEOS_PACKAGE_DIR_NAME = debs
TWEAK_NAME = DietBariOS8
DietBariOS8_FILES = Tweak.xm
DietBariOS8 = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
