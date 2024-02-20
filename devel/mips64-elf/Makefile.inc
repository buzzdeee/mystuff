CONFIG=		mips64-unknown-elf
PKGNAME?=	mips64-elf-${DISTNAME}
CATEGORIES?=	devel

MAINTAINER?=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--target=${CONFIG}	\
		--disable-shared	\
		--disable-nls		\
		--disable-werror

EXTRACT_SUFX?=	.tar.xz
