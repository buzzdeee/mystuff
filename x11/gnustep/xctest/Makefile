COMMENT =	testing framework for Objective-C

GH_ACCOUNT=     gnustep
GH_PROJECT=     tools-xctest
GH_TAGNAME=     0.1.1
DISTNAME=       gnustep-xctest-v${GH_TAGNAME}
PKGNAME=       gnustep-xctest-${GH_TAGNAME}

SHARED_LIBS +=  XCTest		0.5

CATEGORIES +=   devel

WANTLIB += ${COMPILER_LIBCXX} c objc2 gnustep-base m

MODULES =		x11/gnustep
#LIB_DEPENDS =		x11/gnustep/performance
MODGNUSTEP_IS_FRAMEWORK = Yes

MAKE_FLAGS +=	XCTest_INTERFACE_VERSION=${LIBXCTest_VERSION}

.include <bsd.port.mk>
