# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit eutils git gnome2

DESCRIPTION="Gnome applet for displaying XMonad log"
HOMEPAGE="http://uhsure.com/xmonad-log-applet.html"
SRC_URI=""
EGIT_BRANCH="master"
EGIT_REPO_URI="http://git.uhsure.com/xmonad-log-applet.git"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sys-apps/dbus-1.2
	>=dev-haskell/hdbus-0.4
	>=gnome-base/gnome-panel-2
	>=dev-libs/glib-2.16
	>=x11-libs/gtk+-2.10"
DEPEND="${RDEPEND}"

src_unpack() {
	git_src_unpack
}

src_prepare() {
	gnome2_src_prepare

	# Fixed the skeleton Makefile, eyolfson
	epatch "${FILESDIR}/${P}-makefile.patch"
}

src_install() {
	einstall || die "einstall failed"
}
