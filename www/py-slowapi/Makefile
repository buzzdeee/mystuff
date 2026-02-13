COMMENT =		rate limiting extension for Starlette and Fastapi

MODPY_DISTV =		0.1.9
DISTNAME =		slowapi-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/laurents/slowapi

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

# tests subdir isn't packaged
NO_TEST =	Yes

.include <bsd.port.mk>
