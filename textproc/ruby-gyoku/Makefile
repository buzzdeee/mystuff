COMMENT=		translates Ruby Hashes to XML

DISTNAME=		gyoku-1.3.1
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/savonrb/gyoku

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.2

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
