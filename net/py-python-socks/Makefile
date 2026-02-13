COMMENT =		proxy client for Python

MODPY_DISTV =		2.8.0
DISTNAME =		python_socks-${MODPY_DISTV}
PKGNAME =		py-python-socks-${MODPY_DISTV}

CATEGORIES =		net

HOMEPAGE =		https://github.com/romis2012/python-socks
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		security/py-trustme

# needs unported tiny_proxy
NO_TEST =		Yes

.include <bsd.port.mk>
