COMMENT =		vendor and platform neutral SDR support library

#https://github.com/pothosware/SoapySDR.git
V =			0.8.1
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapySDR
GH_COMMIT =		1551ea0d39ce546b32a15808b9b1241018a89fc8
DISTNAME =		soapysdr-$V.0.20260102
CATEGORIES =		comms x11

HOMEPAGE =		https://github.com/pothosware/SoapySDR/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  SoapySDR                  0.0 # 0.0

# BSL-1.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =		devel/cmake \
			lang/python

# Keep debug symbols for your porting process
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DENABLE_PYTHON2=NO

# SDR++ requires a modern C++ compiler (C++17)
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
