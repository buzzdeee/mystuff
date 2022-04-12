COMMENT=	Gem based plugin management

DISTNAME=	little-plugger-1.1.4

CATEGORIES=	devel

HOMEPAGE=	https://github.com/TwP/little-plugger
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

TEST_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_TEST=	rspec3

.include <bsd.port.mk>
