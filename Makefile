DEBUG=0
ARCHS = arm64 arm64e
TARGET = iphone:clang::11.0
INSTALL_TARGET_PROCESSES = SpringBoard
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MsgSwap

MsgSwap_FILES = Tweak/Tweak.xm Tweak/MsgSwapController.m Tweak/MsgSwapFooter.xm
MsgSwap_PRIVATE_FRAMEWORKS = ChatKit
MsgSwap_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
