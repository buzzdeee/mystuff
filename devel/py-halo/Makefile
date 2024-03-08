COMMENT =		beautiful spinners for terminal

MODPY_EGG_VERSION =	0.0.31
DISTNAME =		halo-${MODPY_EGG_VERSION}
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

RUN_DEPENDS =	devel/py-colorama${MODPY_FLAVOR} \
		devel/py-log_symbols${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-spinners${MODPY_FLAVOR} \
		graphics/py-termcolor${MODPY_FLAVOR}

.include <bsd.port.mk>
