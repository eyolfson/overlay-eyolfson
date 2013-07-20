# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="MailDir mailbox synchronizer git version."
HOMEPAGE="http://isync.sourceforge.net/"
LICENSE="GPL-2"

EGIT_REPO_URI="git://git.code.sf.net/p/isync/isync.git"
SRC_URI=""

inherit eutils git-2

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

RDEPEND=">=sys-libs/db-4.2
	ssl? ( >=dev-libs/openssl-0.9.6 )"

DEPEND="${RDEPEND}
    "

src_prepare () {
    # Don't need the changelog, or Date::Parse
    sed -i '/Makefile/d' autogen.sh || die "Could not remove make log call from autogen.sh."
    sed -i '/LOG_PL/,/perl -e/d' Makefile.am || die "Could not remove LOG_PL and related make target."
    touch ChangeLog
    ./autogen.sh
}

src_configure () {
	econf $(use_with ssl)
}

src_install()
{
	emake DESTDIR="${D}" install
	mv "${D}"/usr/share/doc/${PN} "${D}"/usr/share/doc/${PF} || die
}
