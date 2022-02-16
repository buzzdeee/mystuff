# $OpenBSD$

COMMENT =		DNS reconnaissance tool

MODPY_EGG_VERSION =	1.0.0
#GH_ACCOUNT =		darkoperator
GH_ACCOUNT =		buzzdeee
GH_PROJECT =            dnsrecon
#GH_TAGNAME =             ${MODPY_EGG_VERSION}
GH_COMMIT =             286c0bfff0de6e8071a8aff168e5040a4d948264
DISTNAME =		dnsrecon-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR} \
			net/py-netaddr${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
