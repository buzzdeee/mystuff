COMMENT =	Pwntools CTF framework and exploit development library

MODPY_EGG_VERSION =	4.11.1
DISTNAME =	pwntools-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://pwntools.com

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# 'Mostly MIT, some GPL/BSD, see LICENSE-pwntools.txt'
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

FLAVORS =		python3
FLAVOR =		python3

#RUN_DEPENDS =		devel/binutils \
RUN_DEPENDS = devel/capstone/python${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			devel/py-unicorn${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			security/ROPgadget \
			security/py-paramiko${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# Remove code to check for and apply updates
post-extract:
	rm ${WRKSRC}/pwnlib/update.py

.include <bsd.port.mk>
