define Device/8devices_kiwi-dvk
	$(call Device/FitImage)
	$(call Device/EmmcImage)
	DEVICE_VENDOR := 8devices
	DEVICE_MODEL := Kiwi-DVK
	DEVICE_DTS_CONFIG := config@8dev-kiwi
	SOC := ipq9570
	DEVICE_PACKAGES := kmod-ath12k ath12k-firmware-qcn9274 ipq-wifi-8devices_kiwi f2fsck mkf2fs kmod-sfp kmod-phy-maxlinear
	IMAGE/factory.bin := qsdk-ipq-factory-nor
endef
TARGET_DEVICES += 8devices_kiwi-dvk

define Device/qcom_rdp433
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Qualcomm Technologies, Inc.
	DEVICE_MODEL := RDP433
	DEVICE_VARIANT := AP-AL02-C4
	BOARD_NAME := ap-al02.1-c4
	DEVICE_DTS_CONFIG := config@rdp433
	SOC := ipq9574
	KERNEL_INSTALL := 1
	KERNEL_SIZE := 6096k
	IMAGE_SIZE := 25344k
	IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | append-rootfs | pad-rootfs | check-size | append-metadata
endef
TARGET_DEVICES += qcom_rdp433

define Device/tplink_archer-be800-common
  $(call Device/FitImage)
  $(call Device/UbiFit)
  DEVICE_VENDOR := TP-Link
  DEVICE_MODEL := Archer BE800
  BOARD_NAME := tplink_archer-be800
  DEVICE_DTS := ipq9574-archer-be800
  SUPPORTED_DEVICES := tplink,archer-be800
  DEVICE_PACKAGES := kmod-ath12k ath12k-firmware-qcn9274 ipq-wifi-tplink_archer-be800 kmod-sfp kmod-phy-aquantia
endef

define Device/tplink_archer-be800
  $(call Device/tplink_archer-be800-common)
  DEVICE_VARIANT := RJ45
endef
TARGET_DEVICES += tplink_archer-be800

define Device/tplink_archer-be800-sfp
  $(call Device/tplink_archer-be800-common)
  DEVICE_VARIANT := SFP
  DEVICE_DTS := ipq9574-archer-be800-sfp
endef
TARGET_DEVICES += tplink_archer-be800-sfp
