# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit gnome2

DESCRIPTION="A Gmail Notifier for your Desktop"
HOMEPAGE="http://notifier.geekysuavo.org/"
SRC_URI="http://files.geekysuavo.org/notifier/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.6.0
	>=x11-libs/gtk+-2.12
	>=gnome-base/gconf-2.20.0
	>=dev-libs/libxml2-2.6.20
	>=net-libs/libsoup-2.6.0
	>=x11-libs/libnotify-0.4.2
	>=media-libs/gstreamer-0.10.0
	>=gnome-base/gnome-keyring-2.20.0
	>=gnome-base/gnome-panel-2.20.0"
DEPEND="${RDEPEND}"

src_prepare() {
	gnome2_src_prepare
}
