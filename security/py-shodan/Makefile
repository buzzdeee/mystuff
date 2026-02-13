COMMENT =	library and command-line utility for Shodan

MODPY_DISTV =	1.26.1
DISTNAME =	shodan-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
MODPY_PYTEST =	Yes

RUN_DEPENDS =	devel/py-click-plugins \
		devel/py-colorama \
		devel/py-xlsxwriter \
		www/py-requests

.include <bsd.port.mk>
