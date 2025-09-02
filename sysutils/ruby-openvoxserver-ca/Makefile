COMMENT =	interact with OpenVox Server's CA

DISTNAME =	openvoxserver-ca-3.0.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/OpenVoxProject/openvoxserver-ca/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}

RUN_DEPENDS += sysutils/ruby-openfact,${MODRUBY_FLAVOR}>=5,<6

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
