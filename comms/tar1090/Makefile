COMMENT =	webinterface for use with ADS-B decoders
CATEGORIES =	comms

VERSION = 	3.14.187
GH_ACCOUNT =	wiedehopf
GH_PROJECT =	tar1090
#GH_TAGNAME =	v${VERSION}
GH_COMMIT =	c45f922d7b843cd6c4dcdf576117c1a9844ed5ee
DISTNAME =	${GH_PROJECT}-${VERSION}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread rtlsdr
WANTLIB += SoapySDR curses epoll-shim hackrf usb-1.0 z zstd

LIB_DEPENDS =	archivers/zstd \
		comms/hackrf \
		comms/rtl-sdr \
		comms/soapysdr \
		devel/epoll-shim

USE_GMAKE =	Yes

CFLAGS +=	"-I${LOCALBASE}/include"
CFLAGS +=	"-I${LOCALBASE}/include/libepoll-shim"
#CFLAGS +=	"-DENABLE_RTLSDR -DENABLE_HACKRF -DENABLE_SOAPYSDR -DHAVE_BIASTEE"

#MAKE_FLAGS =	CFLAGS="${CFLAGS}"
MAKE_ENV =	RTLSDR=yes \
		HACKRF=yes \
		SOAPYSDR=yes \
		HAVE_BIASTEE=yes

NO_TEST =	Yes

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/readsb ${WRKSRC}/viewadsb ${PREFIX}/bin

.include <bsd.port.mk>
