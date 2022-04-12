COMMENT =	FFI wrapper around the system GSSAPI library

DISTNAME =	gssapi-1.3.1
CATEGORIES =	devel

HOMEPAGE=	https://github.com/zenchild/gssapi

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.0.1

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
