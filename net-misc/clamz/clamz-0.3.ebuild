#Copyright 1999-2009
#Distributed under the terms of the GNU General Public License v2
#$Header:$

inherit fdo-mime

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~x86 ~amd64"
DESCRIPTION="Command-line downloader for the Amazon.com MP3 music store"
SRC_URI="http://clamz.googlecode.com/files/${P}.tar.gz"
HOMEPAGE="http://code.google.com/p/clamz/"
DEPEND="net-misc/curl dev-libs/libgcrypt dev-libs/expat"
IUSE=""

pkg_nofetch()
{
   einfo "Download clamz at the following site"
   einfo ${HOMEPAGE}
   einfo ""
   einfo "Then place the file ${SRC_URI}"
   einfo "into ${DISTDIR} and restart the emerge."
}

src_unpack()
{
   unpack ${A}
   cd "${S}"
}

src_compile()
{
   econf || die "econf failed"
}

src_install()
{
    emake DESTDIR="${D}" install || die "emake install failed"

    rm -rf "${D}usr/share/applications/mimeinfo.cache"
    rm -rf "${D}usr/share/mime/subclasses"
    rm -rf "${D}usr/share/mime/globs"
    rm -rf "${D}usr/share/mime/globs2"
    rm -rf "${D}usr/share/mime/magic"
    rm -rf "${D}usr/share/mime/XMLnamespaces"
    rm -rf "${D}usr/share/mime/aliases"
    rm -rf "${D}usr/share/mime/types"
    rm -rf "${D}usr/share/mime/generic-icons"
    rm -rf "${D}usr/share/mime/icons"
    rm -rf "${D}usr/share/mime/treemagic"
    rm -rf "${D}usr/share/mime/mime.cache"
}

pkg_postinst()
{
    fdo-mime_desktop_database_update
    fdo-mime_mime_database_update
}

pkg_postrm()
{
    fdo-mime_desktop_database_update
    fdo-mime_mime_database_update
}
