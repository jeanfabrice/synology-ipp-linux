#!/bin/sh

. /pkgscripts/include/pkg_util.sh

package="ipp-linux"
version="1.67.162-1"
displayname="ipp-linux"
arch="$(pkg_get_platform) "
maintainer="Jean-Fabrice"
description="Eaton Intelligent Power Protector"
support_url="http://pqsoftware.eaton.com/explore/eng/ipp/default.htm"
adminprotocol="https"
adminport="4680"
checkport="no"
ctl_stop="yes"
thirdparty="yes"
silent_install="yes"
silent_upgrade="yes"
silent_uninstall="yes"

[ "$(caller)" != "0 NULL" ] && return 0

pkg_dump_info
