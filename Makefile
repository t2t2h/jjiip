ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwixControl
TwixControl_FILES = TwixControl/Tweak.xm
TwixControl_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
TwixControl_FRAMEWORKS = UIKit Foundation
TwixControl_PRIVATE_FRAMEWORKS =

include $(THEOS_MAKE_PATH)/tweak.mk
