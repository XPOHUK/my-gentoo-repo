# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake git-r3

DESCRIPTION="This xkb-switch"
HOMEPAGE="https://github.com/sergei-mironov/xkb-switch"
EGIT_REPO_URI="https://github.com/sergei-mironov/xkb-switch.git"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="x11-libs/libxkbfile"
DEPEND="${RDEPEND}"

src_prepare() {
    default
    # Заменяем жестко прописанный 'lib' на правильный каталог

    sed -i "s/LIBRARY DESTINATION lib/LIBRARY DESTINATION \${CMAKE_INSTALL_LIBDIR}/" CMakeLists.txt || die
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
        -DCMAKE_INSTALL_LIBDIR="$(get_libdir)"
    )
    cmake_src_configure
}
