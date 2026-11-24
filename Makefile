
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StopShortcutsNotifications

StopShortcutsNotifications_FILES = tweak.xm
StopShortcutsNotifications_CFLAGS = -fobjc-arc
StopShortcutsNotifications_FRAMEWORKS = UIKit
StopShortcutsNotifications_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += stopshortcutsnotifications

include $(THEOS_MAKE_PATH)/aggregate.mk
