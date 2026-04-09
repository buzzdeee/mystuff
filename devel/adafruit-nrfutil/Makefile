COMMENT =		tool for flashing Adafruit nRF52 series boards

MODPY_DISTV =		0.5.3.post16
DISTNAME =		adafruit-nrfutil-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/adafruit/Adafruit_nRF52_nrfutil

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-click \
			devel/py-serial \
			security/py-ecdsa

.include <bsd.port.mk>
