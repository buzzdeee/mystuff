COMMENT=	easy cache support for Flask

MODPY_EGG_VERSION=2.1.0
DISTNAME=	Flask-Caching-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools
FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-cachelib${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR}

#6 failed, 114 passed, 78 skipped, 83 warnings, 1 error

.include <bsd.port.mk>
