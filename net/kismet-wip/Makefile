COMMENT=	802.11 layer2 wireless network detector, sniffer, and IDS

# No wireless capabilities
NOT_FOR_ARCHS=	m88k

V=		2024-02-R1
GH_ACCOUNT=	kismetwireless
GH_PROJECT=	kismet
GH_COMMIT=	ccd95cefba3fc31d1385a5766e1e2a135dd8b45f
DISTNAME=	kismet-${V}
PKGNAME=	kismet-${V:S,-,,g}
CATEGORIES=	net security

HOMEPAGE=	https://www.kismetwireless.net/

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
WANTLIB += absl_bad_optional_access absl_bad_variant_access absl_base
WANTLIB += absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_severity absl_log_sink absl_low_level_hash
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB += absl_str_format_internal absl_strerror absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone crypto
WANTLIB += execinfo pcre2-8 protobuf protobuf-c sqlite3 ssl utf8_range
WANTLIB += utf8_validity websockets z atomic usb-1.0
WANTLIB += absl_log_internal_fnmatch absl_vlog_config_internal
WANTLIB += mosquitto
LIB_DEPENDS=		devel/protobuf-c \
			lang/gcc/8,-libs \
			net/mosquitto \
			www/libwebsockets
RUN_DEPENDS=		comms/rtl-sdr \
			devel/py-protobuf${MODPY_FLAVOR} \
			net/wireshark,-text \
			net/py-websockets

.include <bsd.port.arch.mk>

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README.SSL \
			${PREFIX}/share/doc/kismet
	@cd ${WRKSRC} && ${GMAKE} binsuidinstall

.include <bsd.port.mk>
