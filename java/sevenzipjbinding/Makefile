COMMENT =	Java JNI binding for 7-Zip archive library

GH_ACCOUNT =	sleuthkit
GH_PROJECT =	sevenzipjbinding
GH_COMMIT =	fcdbb86ef565a60577a3120942e71df05ac3e87f
DISTNAME =	sevenzipjbinding-16.02.2.01.0

CATEGORIES =	archivers java

MAINTAINER =	Your Name <you@example.com>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} m

MODULES =	devel/cmake \
		java

# Set Java 21 JDK requirements
MODJAVA_VER =	21

# Ensure CMake can locate OpenBSD's Java headers
CONFIGURE_ARGS += -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd" \
			-DJAVA_JDK=${JAVA_HOME} \
			-Wno-dev
CONFIGURE_ENV =		JAVA_HOME=${JAVA_HOME}

# Use system C++ compiler (clang++ on modern OpenBSD)
COMPILER =	base-clang ports-gcc

NO_TEST =	Yes

# cmake configure is looking for javah, so create a wrapper
post-extract:
	@printf '#!/bin/sh\nexit 0\n' > ${WRKDIR}/bin/javah
	@chmod +x ${WRKDIR}/bin/javah

SUBST_VARS = ARCH

do-install:
	# Install Java JARs to /usr/local/share/java/sevenzipjbinding/
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/sevenzipjbinding
	${INSTALL_DATA} ${WRKBUILD}/jbinding-java/sevenzipjbinding.jar \
		${PREFIX}/share/java/sevenzipjbinding/
	${INSTALL_DATA} ${WRKBUILD}/sevenzipjbinding-OpenBSD-amd64.jar \
		${PREFIX}/share/java/sevenzipjbinding/

	# Install native JNI shared object
	${INSTALL_DATA_DIR} ${PREFIX}/lib/sevenzipjbinding
	${INSTALL_DATA} ${WRKBUILD}/jbinding-cpp/lib7-Zip-JBinding.so \
		${PREFIX}/lib/sevenzipjbinding/

.include <bsd.port.mk>

