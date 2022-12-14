BROKEN-mips64el =	Bus error on startup, no core file left

V =		1.0.1
COMMENT =	2D MMORPG focused on grinding
DISTNAME =	code-v${V}
PKGNAME =	choria-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://choria.gitlab.io/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += c m pthread SDL2_image sqlite3 ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 freetype jsoncpp ogg tinyxml2 vorbis vorbisfile
WANTLIB += z openal ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib
MODLUA_VERSION =	5.3

MASTER_SITES =	https://gitlab.com/choria/code/-/archive/v${V}/


MODULES =	devel/cmake lang/lua

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/jsoncpp \
		devel/sdl2 \
		devel/sdl2-image \
		graphics/glm \
		databases/sqlite3 \
		textproc/tinyxml2

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/choria
	perl -pi -e "s,games,bin,g" ${WRKSRC}/CMakeLists.txt
	cp -r ${FILESDIR}/cmake ${WRKSRC}/
	cp -r ${FILESDIR}/ae ${WRKSRC}/ext/
	cp ${FILESDIR}/version.h ${WRKSRC}/src/

.include <bsd.port.mk>
