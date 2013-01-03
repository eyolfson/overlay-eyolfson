# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
EGIT_REPO_URI="https://github.com/hron/yari.el.git"

inherit elisp git-2

DESCRIPTION="Yari, yet another ri documentation interface for emacs."
HOMEPAGE="http://www.emacswiki.org/cgi-bin/emacs/YARI"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SITEFILE="50${PN}-gentoo.el"
