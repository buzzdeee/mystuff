COMMENT =		cross-platform Software-Defined Radio application

#https://github.com/cjcliffe/CubicSDR.git
V =			0.2.7
GH_ACCOUNT =		cjcliffe
GH_PROJECT =		CubicSDR
GH_COMMIT =		033330367cd179d7b04503027d41afa7514036f4
DISTNAME =		cubicsdr-$V.0.20240306
CATEGORIES =		comms x11

HOMEPAGE =		https://github.com/cjcliffe/CubicSDR/wiki
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += GL GLU SoapySDR liquid pulse pulse-simple wx_baseu-3.2
WANTLIB += wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_propgrid-3.2

MODULES =		devel/cmake

LIB_DEPENDS =		audio/pulseaudio \
			comms/liquid-dsp \
			comms/soapysdr \
			x11/wxWidgets

# Keep debug symbols for your porting process
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DCMAKE_POLICY_VERSION_MINIMUM=3.5

# SDR++ requires a modern C++ compiler (C++17)
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
