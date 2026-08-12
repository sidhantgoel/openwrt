include $(TOPDIR)/rules.mk

PKG_NAME:=ath12k-firmware
PKG_VERSION:=2026-03-03
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com
PKG_SOURCE_VERSION:=c7b7a979b30e9fbaf2c41b4ad96a4c4d67846927
PKG_MIRROR_HASH:=446cd7b9892f531bc665b618f11e3abfc907271cdc407fafe794891520c0affd

PKG_MAINTAINER:=Sidhant Goel <sidhant@hexcod.in>
PKG_LICENSE:=Proprietary
PKG_LICENSE_FILES:=LICENCE.QualcommEULA

PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk

define Package/ath12k-firmware-qcn9274
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Qualcomm QCN9274 firmware
  DEPENDS:=@TARGET_qualcommbe
endef

define Package/ath12k-firmware-qcn9274/install
	$(INSTALL_DIR) $(1)/lib/firmware/ath12k/QCN9274/hw2.0
	$(CP) $(PKG_BUILD_DIR)/QCN9274/hw2.0/* $(1)/lib/firmware/ath12k/QCN9274/hw2.0/
endef

$(eval $(call BuildPackage,ath12k-firmware-qcn9274))
