# $OpenBSD$

COMMENT =		enumerate subdomains of websites using OSINT

MODPY_EGG_VERSION =	1.1
GH_ACCOUNT =		aboul3la
GH_PROJECT =            Sublist3r
GH_TAGNAME =            ${MODPY_EGG_VERSION}
PKGNAME = 		${GH_PROJECT:L}-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
