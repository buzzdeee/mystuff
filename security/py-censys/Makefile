# $OpenBSD$

COMMENT =	library and command-line utility for Censys

MODPY_DISTV =	2.2.11
DISTNAME =	censys-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

BUILD_DEPENDS =	devel/py-poetry-core
RUN_DEPENDS =	${BUILD_DEPENDS} \
		devel/py-backoff \
		devel/py-poetry-core \
		devel/py-rich \
		www/py-requests

.include <bsd.port.mk>
