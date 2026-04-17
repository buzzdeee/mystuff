COMMENT =		GNU Radio block for various radio hardware

GH_ACCOUNT =		osmocom
GH_PROJECT =		gr-osmosdr
GH_TAGNAME =		v0.2.6
CATEGORIES =		comms

HOMEPAGE =		https://osmocom.org/projects/gr-osmosdr/wiki
MAINTAINER =		Your Name <you@example.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=  gnuradio-osmosdr          0.0 # 0.0

WANTLIB += m gnuradio-blocks gnuradio-runtime rtlsdr volk
WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_thread-mt
WANTLIB += fmt gmp gmpxx gnuradio-pmt hackrf spdlog

MODULES =		devel/cmake \
			lang/python

LIB_DEPENDS =		comms/gnuradio \
			comms/hackrf \
			comms/rtl-sdr \
			devel/libvolk \
			devel/py-pybind11 \
			x11/py-qt5
			

# Requires C++11 or higher
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-Wno-dev \
			-Dpybind11_DIR=${LOCALBASE}/lib/python${MODPY_VERSION}/site-packages/pybind11/share/cmake/pybind11

CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17 \
			-DCMAKE_CXX_STANDARD_REQUIRED=ON \
			-DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_OFF \
			-DGR_DATA_LOGGER_ID=0

CXXFLAGS += -DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_OFF \
            -DGR_DATA_LOGGER_ID=0
.include <bsd.port.mk>
