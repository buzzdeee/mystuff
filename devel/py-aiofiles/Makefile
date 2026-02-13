COMMENT =		file support for asyncio

MODPY_DISTV =		25.1.0
DISTNAME =		aiofiles-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/Tinche/aiofiles

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

#FAILED tests/test_os.py::test_sendfile_file - AttributeError: module 'aiofile...
#FAILED tests/test_os.py::test_sendfile_socket - AssertionError: assert b'0123...
#=================== 2 failed, 213 passed, 4 skipped in 3.79s ===================
TEST_DEPENDS =	devel/py-test-asyncio

.include <bsd.port.mk>
