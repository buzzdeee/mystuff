COMMENT =	proxy connector for aiohttp

MODPY_DISTV =	0.11.0
DISTNAME =	aiohttp_socks-${MODPY_DISTV}
PKGNAME =	py-aiohttp_socks-${MODPY_DISTV}

DIST_TUPLE =	github romis2012 aiohttp-socks v${MODPY_DISTV} .

CATEGORIES =	www

HOMEPAGE =	https://github.com/romis2012/aiohttp-socks
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	net/py-python-socks \
		www/py-aiohttp

TEST_DEPENDS =	${RUN_DEPENDS}

# needs unported tiny_proxy
NO_TEST =	Yes

post-extract:
	rm -rf ${WRKSRC}/tests
	mv ${WRKDIR}/aiohttp-socks-0.11.0/tests \
		${WRKSRC}/tests

.include <bsd.port.mk>
