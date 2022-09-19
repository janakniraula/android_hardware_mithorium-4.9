USE_MITHORIUM_HALS := true

MITHORIUM_DEVICE_SPECIFIC_HALS := audio display media
$(foreach h, $(call to-upper, $(MITHORIUM_DEVICE_SPECIFIC_HALS)), \
    $(eval USE_DEVICE_SPECIFIC_$(h) := true) \
    $(eval DEVICE_SPECIFIC_$(h)_PATH := $(LOCAL_PATH)/$(call to-lower,$(h))-hal))

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys/display \
    vendor/qcom/opensource/display
