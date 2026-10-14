COMMENT =	iOS Logs Events And Protobuf Parser

GH_ACCOUNT =	abrignoni
GH_PROJECT =	iLEAPP
GH_TAGNAME =	v2026.4.4

PKGNAME =	${GH_PROJECT:L}-${GH_TAGNAME:S/^v//}

CATEGORIES =	security

MAINTAINER =	Your Name <you@example.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

# Dependencies required for iLEAPP execution
# there are more in requirements.txt
RUN_DEPENDS =	devel/py-parsing \
		graphics/py-Pillow \
		sysutils/py-packaging


.include <bsd.port.mk>

