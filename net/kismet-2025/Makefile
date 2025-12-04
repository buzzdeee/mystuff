COMMENT=	802.11 layer2 wireless network detector, sniffer, and IDS

# No wireless capabilities
NOT_FOR_ARCHS=	m88k

V=              2025-09-R1
DISTNAME=       kismet-${V}
PKGNAME=        kismet-${V:S,-,,g}
CATEGORIES=     net security
CATEGORIES=	net security

HOMEPAGE=       https://www.kismetwireless.net/
SITES=          ${HOMEPAGE}code/
EXTRACT_SUFX=   .tar.xz

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc
MODULES =		lang/python

# "old" is required for setting --sysconfdir
CONFIGURE_STYLE=	gnu old

CONFDIR=		${SYSCONFDIR}/kismet
SUBST_VARS+=		CONFDIR

CONFIGURE_ARGS=		--sysconfdir=${CONFDIR} \
			--mandir=${PREFIX}/man \
			--with-suidgroup=_kismet \
			--disable-wifi-coconut

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

SAMPLES_DIR=		${DESTDIR}${LOCALBASE}/share/examples/kismet
FAKE_FLAGS+=		ETC=${SAMPLES_DIR}

WANTLIB+=		c m pcap ${COMPILER_LIBCXX} util
WANTLIB += crypto rtlsdr
WANTLIB += pcre2-8 sqlite3 ssl
WANTLIB += websockets z atomic usb-1.0
WANTLIB += mosquitto
LIB_DEPENDS=		comms/rtl-sdr \
			lang/gcc/8,-libs \
			net/mosquitto \
			www/libwebsockets
RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			net/wireshark,-text \
			net/py-websockets

.include <bsd.port.arch.mk>

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README.SSL \
			${PREFIX}/share/doc/kismet
	@cd ${WRKSRC} && ${GMAKE} binsuidinstall

.include <bsd.port.mk>
