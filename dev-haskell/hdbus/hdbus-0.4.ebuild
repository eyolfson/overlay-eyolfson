# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="haddock lib"
inherit base haskell-cabal autotools

DESCRIPTION="Haskell bindings for D-Bus"
HOMEPAGE="http://hackage.haskell.org/package/DBus"
SRC_URI="http://hackage.haskell.org/packages/archive/DBus/0.4/DBus-${PV}.tar.gz"

LICENSE="BSD"
SLOT="${PV}"

KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4
		>=sys-apps/dbus-0.60"

src_compile() {
	cd ${S}
	./configure
	eautoreconf
	haskell-cabal_src_compile
}
