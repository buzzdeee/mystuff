# $OpenBSD$

COMMENT =		library and command-line utility for Censys

MODPY_EGG_VERSION =	2.1.2
DISTNAME =		censys-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-backoff${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
