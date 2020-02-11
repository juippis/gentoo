# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for creating and modifying zip archives"
HOMEPAGE="https://github.com/jgm/zip-archive"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha amd64 ia64 ppc ppc64 sparc x86"
IUSE="executable"

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
		>=dev-haskell/digest-0.0.0.1:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/utf8-string-0.3.1:=[profile?]
		dev-haskell/zlib:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10
		test? ( dev-haskell/hunit
			app-arch/zip
		)"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
