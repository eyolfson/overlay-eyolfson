EAPI=2
inherit gnome2

DESCRIPTION="Gnome applet for displaying Xmonad log."
HOMEPAGE="http://uhsure.com/xmonad-log-applet.html"
SRC_URI="http://uhsure.com/xmonad-log-applet/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sys-apps/dbus-1.2
         >=dev-haksell/hdbus-0.4
         >=gnome-base/gnome-panel-2
	 >=dev-libs/glib-2.16
	 >=x11-libs/gtk+-2.10"
DEPEND="${RDEPEND}"