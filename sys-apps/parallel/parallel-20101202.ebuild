# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="GNU parallel is a shell tool for executing jobs in parallel locally or using remote machines."
HOMEPAGE="http://www.gnu.org/software/parallel/"
SRC_URI="http://ftp.gnu.org/gnu/parallel/${P}.tar.bz2
		 http://ftp.gnu.org/gnu/parallel/${P}.tar.bz2"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# src_install() {
# 	emake DESTDIR="${D}" install || die "make install failed"
# 	dodoc AUTHORS ChangeLog NEWS README THANKS TODO
# }
