# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="haddock lib"
inherit base haskell-cabal autotools

MY_PN="DBus"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Haskell bindings for D-Bus"
HOMEPAGE="http://hackage.haskell.org/package/DBus"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"

KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4
		>=sys-apps/dbus-0.60"


S="${WORKDIR}/${MY_P}"

src_compile() {
	eautoreconf
	haskell-cabal_src_compile
}
