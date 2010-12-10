# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit elisp

DESCRIPTION="Emacs portion of rcodetools."
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/ClojureMode"
SRC_URI="http://rubyforge.org/frs/download.php/41362/rcodetools-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SITEFILE="70${PN}-gentoo.el"

S=${WORKDIR}/rcodetools-${PV}
