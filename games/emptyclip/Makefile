COMMENT =	top-down shooter RPG

V =		2.0.2
COMMIT = 	adc6abf
DISTNAME =	emptyclip-${V}-${COMMIT}-src
PKGNAME =	emptyclip-${V}
CATEGORIES =	games x11
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

HOMEPAGE =	https://empty-clip.gitlab.io/


# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += c m pthread SDL2_image sqlite3 ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 freetype ogg vorbis vorbisfile
WANTLIB += z openal ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

MASTER_SITES =	https://gitlab.com/jazztickets/uploads/-/raw/main/

MODULES =	devel/cmake

#BUILD_DEPENDS =	graphics/glm \
#		shells/bash
LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		devel/sdl2-image \
		databases/sqlite3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/emptyclip-${V}-${COMMIT}

#pre-configure:
#	perl -pi -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
#				  ${WRKSRC}/deployment/choria
	
.include <bsd.port.mk>
