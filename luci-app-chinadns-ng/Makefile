include $(TOPDIR)/rules.mk
PKG_VERSION:=1.0
PKG_RELEASE:=20201023

LUCI_TITLE:=LuCI support for chinadns-ng
LUCI_DEPENDS:=+chinadns-ng

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
define Package/luci-app-chinadns-ng/postinst
#!/bin/sh
	/etc/init.d/chinadns-ng enable >/dev/null 2>&1
	enable=$(uci get chinadns-ng.@chinadns-ng[0].enable 2>/dev/null)
	if [ "$enable" == "1" ]; then
		/etc/init.d/chinadns-ng reload
	fi
	
exit 0
endef
