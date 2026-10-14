COMMENT =	Digital Evidence Processor and Indexer

GH_ACCOUNT =	sepinf-inc
GH_PROJECT =	IPED
GH_TAGNAME =	4.3.1

CATEGORIES =	security sysutils

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GNU GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	java
MODJAVA_VER =	21

BUILD_DEPENDS =	devel/maven \
		java/javaPathHelper

RUN_DEPENDS =	java/javaPathHelper \
		graphics/tesseract

# Offline Maven build: OpenBSD build environments require offline builds.
# You will need to populate ${DISTDIR}/maven-repository or pre-fetch dependencies.
MODMAVEN_BUILD_ARGS =	-DskipTests --offline

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} mvn package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/iped
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/iped
	
	# Copy built JARs and build artifacts to the share directory
	${INSTALL_DATA} ${WRKSRC}/iped-app/target/*.jar ${PREFIX}/libexec/iped/
	
	# Copy default configuration profiles
	cp -r ${WRKSRC}/iped-app/profiles ${PREFIX}/share/iped/

	# Install a wrapper launcher script
	${INSTALL_SCRIPT} ${FILESDIR}/iped ${PREFIX}/bin/iped

.include <bsd.port.mk>
