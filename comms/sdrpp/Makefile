COMMENT =		bloat-free SDR software with a focus on performance

V =			1.0.4
GH_ACCOUNT =		AlexandreRouma
GH_PROJECT =		SDRPlusPlus
GH_COMMIT =		a6df4d58e5f6b3045883a70aeb8fb41fd5dbf1d9
DISTNAME =		sdrpp-$V.0.20260323
CATEGORIES =		comms x11

HOMEPAGE =		https://www.sdrpp.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

# Standard OpenBSD wants list for a C++/OpenGL/SDR app
WANTLIB += ${COMPILER_LIBS} GL glfw m fftw3f volk zstd
WANTLIB += rtlsdr portaudio usb-1.0
WANTLIB += ${COMPILER_LIBCXX} GLU c hackrf

MODULES =		devel/cmake

# SDR++ uses its own internal version of ImGui, but needs these system libs
LIB_DEPENDS =		comms/hackrf \
			comms/rtl-sdr \
			devel/libvolk \
			devel/libusb1 \
			graphics/glew \
			graphics/glfw \
			math/fftw3,float \
			audio/portaudio-svn \
			archivers/zstd

# SDR++ is a plugin-based system. We enable the ones most likely to work on BSD.
CONFIGURE_ARGS +=	-DOPT_BUILD_AUDIO_SOURCE=OFF \
			-DOPT_BUILD_AUDIO_SINK=OFF \
			-DOPT_BUILD_SOAPY_SOURCE=OFF \
			-DOPT_BUILD_AIRSPYHF_SOURCE=OFF \
			-DOPT_BUILD_AIRSPY_SOURCE=OFF \
			-DOPT_BUILD_PLUTOSDR_SOURCE=OFF \
			-DOPT_BUILD_PORTAUDIO_SINK=ON \
			-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_INSTALL_PREFIX=${PREFIX}

# Keep debug symbols for your porting process
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo

# SDR++ requires a modern C++ compiler (C++17)
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
