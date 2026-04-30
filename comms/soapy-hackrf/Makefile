COMMENT =		Soapy SDR plugin for HackRF

#https://github.com/pothosware/SoapySDR.git
V =			0.3.4
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapyHackRF
GH_COMMIT =		143ff5e7e0f786e341df8846c04e8273c5183c26
DISTNAME =		soapy-hackrf-$V.0.20251009
CATEGORIES =		comms

HOMEPAGE =		https://github.com/pothosware/SoapyHackRF/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

#SHARED_LIBS +=  SoapySDR                  0.0 # 0.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += SoapySDR hackrf

MODULES =		devel/cmake

LIB_DEPENDS =		comms/hackrf \
			comms/soapysdr

# Keep debug symbols for your porting process
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo

# SDR++ requires a modern C++ compiler (C++17)
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
