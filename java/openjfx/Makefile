COMMENT =		JavaFX/OpenJFX client toolkit

BASE_V =		21.0.11
BASE_REV =		4
V =			${BASE_V}.${BASE_REV}
GH_ACCOUNT =		openjdk
GH_PROJECT =		jfx21u
GH_TAGNAME =		${BASE_V}+${BASE_REV}
PKGNAME =		openjfx-${V}

CATEGORIES =		java

#MASTER_SITES =		https://github.com/openjdk/jfx/archive/refs/tags/

DISTFILES =		jfx-${V}.tar.gz

HOMEPAGE =		https://openjfx.io/

MAINTAINER =		Your Name <you@example.com>

# GPLv2 + Classpath Exception
PERMIT_PACKAGE =	Yes

MODULES =		java devel/cmake
MODJAVA_VER =		21

BUILD_DEPENDS =		java/gradle \
			devel/apache-ant \
			devel/gperf \
			devel/ninja \
			archivers/zip

LIB_DEPENDS =		\
			audio/pulseaudio \
			x11/gtk+3 \

# OpenJFX uses Gradle internally
USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/jfx21u-${BASE_V}-${BASE_REV}


CONFIGURE_STYLE =	none
SUBST_VARS =		BASE_V


# OpenJFX build options
MAKE_FLAGS =		NUM_COMPILE_THREADS=${MAKE_JOBS}

post-extract:
	cp ${FILESDIR}/openbsd.gradle \
		${WRKSRC}/buildSrc

do-build:
	cd ${WRKSRC} && \
	    chmod 755 ./gradlew && \
	    ${SETENV} JAVA_HOME=${LOCALBASE}/jdk-21 \
	    ./gradlew \
	        --no-daemon \
		--info \
	        -PCOMPILE_TARGETS=openbsd \
	        sdk


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/openjfx

	# Copy the main platform-neutral jars with the version number injected
.for mod in base controls fxml graphics media swing web
	${INSTALL_DATA} ${WRKSRC}/build/publications/javafx.${mod}.jar \
		${PREFIX}/share/java/openjfx/javafx-${mod}-${BASE_V}.jar
.endfor

	# Copy the OpenBSD native library jars with the version number injected
.for mod in base controls fxml graphics media swing web
	${INSTALL_DATA} ${WRKSRC}/build/publications/javafx.${mod}-openbsd.jar \
		${PREFIX}/share/java/openjfx/javafx-${mod}-${BASE_V}-openbsd.jar
.endfor

do-install-not-anymore:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/java/openjfx

	cd ${WRKSRC}/build/sdk && \
	    pax -rw -pp . \
	    ${PREFIX}/share/java/openjfx


.include <bsd.port.mk>
