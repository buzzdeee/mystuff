COMMENT =		Ausweis app

GH_ACCOUNT = 	Governikus
GH_PROJECT=     AusweisApp
GH_TAGNAME=     2.4.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/Governikus/AusweisApp

# EUPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

#BUILD_DEPENDS =		devel/gettext,-tools
#LIB_DEPENDS =		security/openssl/3.5
#CFLAGS +=       "-I${LOCALBASE}/include/eopenssl35"
#LIBS +=         "-Wl,-rpath ${LOCALBASE}/lib/eopenssl35 -L${LOCALBASE}/lib/eopenssl35"

#CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS}" \
#			-DCMAKE_CXX_FLAGS="${CFLAGS}" \
#			-DCMAKE_EXE_LINKER_FLAGS="-Wl,-rpath ${LOCALBASE}/lib/eopenssl35 -L${LOCALBASE}/lib/eopenssl35"

#			textproc/tinyxml2

#CONFIGURE_ARGS =	-DUSE_INTERNAL_TINYXML=Off \
#			-DCMAKE_DISABLE_FIND_PACKAGE_Git=On \
#			-DBUILD_UNIT_TESTS=Off

#CXXFLAGS+=		-DHAVE_UTIMENSAT -D_DIRENT_HAVE_D_TYPE


.include <bsd.port.mk>

