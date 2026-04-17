COMMENT =		SDR receiver GUI based on GNU Radio and Qt

V =			2.17.7
GH_ACCOUNT = 		gqrx-sdr
GH_PROJECT =		gqrx
GH_TAGNAME =		v${V}
#DISTNAME =		gqrx-$V
CATEGORIES =		comms x11

HOMEPAGE =		https://gqrx.dk/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB += m gnuradio-analog gnuradio-blocks gnuradio-filter 
WANTLIB += gnuradio-fft gnuradio-osmosdr gnuradio-runtime volk
WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_thread-mt
WANTLIB += c fmt gmp gmpxx gnuradio-audio gnuradio-digital gnuradio-network
WANTLIB += gnuradio-pmt spdlog Qt6Svg Qt6SvgWidgets

#MASTER_SITES =		https://github.com/gqrx-sdr/gqrx/releases/download/v$V/

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		comms/gnuradio \
			comms/gr-osmosdr \
			devel/libvolk \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils
#			x11/gtk+3

# Use RelWithDebInfo to keep symbols but maintain performance
# Set STRIP to empty to prevent OpenBSD from stripping symbols during install
STRIP =
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DCMAKE_INSTALL_DO_STRIP=OFF \
			-DLINUX_AUDIO_BACKEND=OFF \
			-DPULSEAUDIO_FOUND=OFF

# Help CMake find the gr-osmosdr you just built
CONFIGURE_ARGS +=	-Dgr-osmosdr_DIR=${LOCALBASE}/lib/cmake/gr-osmosdr

# GQRX requires C++17
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
