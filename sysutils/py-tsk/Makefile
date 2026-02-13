COMMENT =	Python bindings for The Sleuth Kit (libtsk)

MODPY_DISTV =	20250801
DISTNAME =	pytsk3-${MODPY_DISTV}
PKGNAME =	py-tsk-${MODPY_DISTV}

# download a copy from github archive as well, to fill in the incomplete
# tests dir from the pypi sdist (this is simpler than fetching the whole
# port from github as it needs a submodule + autoconf scripts generating)
DIST_TUPLE =	github py4n6 pytsk ${MODPY_DISTV} .

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/py4n6/pytsk/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

WANTLIB += ${COMPILER_LIBCXX} m talloc

# C++11
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS =	sysutils/sleuthkit:configure
LIB_DEPENDS =	devel/libtalloc

post-extract:
	rm -rf ${WRKSRC}/sleuthkit ${WRKSRC}/talloc
	ln -s ${WRKDIR}/sysutils/sleuthkit/sleuthkit-*/ ${WRKSRC}/sleuthkit
	mv ${WRKDIR}/pytsk-${MODPY_DISTV}/tests/* ${WRKSRC}/tests/

pre-configure:
	${SUBST_DATA} ${WRKSRC}/setup.py ${WRKSRC}/setup.py.new
	mv ${WRKSRC}/setup.py.new ${WRKSRC}/setup.py

# it needs test_data/* in the Github repository
do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
