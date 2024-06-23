# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DESCRIPTION="X11 keyboard indicator and switcher"
HOMEPAGE="https://sourceforge.net/projects/staybox/"
SRC_URI="https://sourceforge.net/projects/staybox/files/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND="=x11-libs/gtk+-2*
		x11-libs/gdk-pixbuf
		x11-libs/gdk-pixbuf-xlib"
DEPEND="${RDEPEND}"
