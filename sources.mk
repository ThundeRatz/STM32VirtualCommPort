THIS_PATH := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

C_INCLUDES +=                                                               \
	-I$(THIS_PATH)/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc    \
	-I$(THIS_PATH)/Middlewares/ST/STM32_USB_Device_Library/Core/Inc         \
    -I$(THIS_PATH)/inc                                                      \

# C_INCLUDE += $(addprefix -I, $(sort $(dir $(shell find $(THIS_PATH) -name "*.h")))

LIB_SOURCES += $(shell find                                             \
    $(THIS_PATH)/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src  \
    $(THIS_PATH)/Middlewares/ST/STM32_USB_Device_Library/Core/Src       \
    $(THIS_PATH)/src -name "*.c"                                        \
)

undefine THIS_PATH
