COMMENT =	headless chrome/chromium automation library

MODPY_DISTV =	1.0.2
DISTNAME =	pyppeteer-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	www
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	poetry-core

#post-install:
#	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/LICENSE \
#	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/README.md

.include <bsd.port.mk>
