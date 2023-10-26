# $OpenBSD$

COMMENT =		collection of cache libraries

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		cachelib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

# 11 failed, 86 passed, 35 skipped (dynamodb tests fail)
TEST_DEPENDS +=		devel/py-test-xprocess${MODPY_FLAVOR}

.include <bsd.port.mk>
