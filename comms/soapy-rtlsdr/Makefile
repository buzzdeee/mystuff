COMMENT =		Soapy SDR plugin for RTL-SDR

#https://github.com/pothosware/SoapySDR.git
V =			0.3.3
GH_ACCOUNT =		pothosware
GH_PROJECT =		SoapyRTLSDR
GH_COMMIT =		b1f568d1b57cc973a1d2ee49be68d0d748d164e4
DISTNAME =		soapy-rtlsdr-$V.0.20250825
CATEGORIES =		comms

HOMEPAGE =		https://github.com/pothosware/SoapyRTLSDR/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += SoapySDR rtlsdr

MODULES =		devel/cmake

LIB_DEPENDS =		comms/rtl-sdr \
			comms/soapysdr

# Keep debug symbols for your porting process
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo

# SDR++ requires a modern C++ compiler (C++17)
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
