EAPI=2
inherit git gnome2

DESCRIPTION="Gnome applet for displaying Xmonad log."
HOMEPAGE="http://uhsure.com/xmonad-log-applet.html"
SRC_URI=""
EGIT_BRANCH="master"
EGIT_REPO_URI="http://git.uhsure.com/xmonad-log-applet.git"


SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sys-apps/dbus-1.2
         >=dev-haksell/hdbus-0.4
         >=gnome-base/gnome-panel-2
	 >=dev-libs/glib-2.16
	 >=x11-libs/gtk+-2.10"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

src_unpack() {
    git_src_unpack
    cd "${S}"
}

src_prepare() {
    gnome2_src_prepare
}
