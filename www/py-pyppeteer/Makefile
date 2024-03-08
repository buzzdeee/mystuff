COMMENT=	headless chrome/chromium automation library

MODPY_EGG_VERSION=1.0.2
DISTNAME=	pyppeteer-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

FLAVORS=		python3
FLAVOR=			python3

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/LICENSE \
	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/README.md

.include <bsd.port.mk>
