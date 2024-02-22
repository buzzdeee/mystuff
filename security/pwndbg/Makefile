COMMENT =	GDB plug-in that makes debugging with GDB suck less

MODPY_EGG_VERSION =	2024.02.14
DISTNAME =	pwndbg-${MODPY_EGG_VERSION}
GH_ACCOUNT =	pwndbg
GH_PROJECT =	pwndbg
GH_TAGNAME =	${MODPY_EGG_VERSION}
DISTNAME =	py-${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME}

CATEGORIES =	devel security

HOMEPAGE =	https://pwntools.com

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# 'Mostly MIT, some GPL/BSD, see LICENSE-pwntools.txt'
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		No
MODPY_PYBUILD =	setuptools

RUN_DEPENDS = devel/py-tabulate${MODPY_FLAVOR} \
		security/pwntools${MODPY_FLAVOR}

.include <bsd.port.mk>
