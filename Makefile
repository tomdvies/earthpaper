ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = earthpaper

earthpaper_PRIVATE_FRAMEWORKS = SpringBoardFoundation SpringBoardUIServices

earthpaper_FILES = Tweak.x fetcher.x LockScreenHooks.x HomeScreenHooks.x 
earthpaper_CFLAGS = -fobjc-arc
earthpaper_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
