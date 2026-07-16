COMMENT=	SQLite JDBC driver with native OpenBSD bindings

V=		3.49.1.0
SLF4J_V =	2.0.16
GH_ACCOUNT =	xerial
GH_PROJECT =	sqlite-jdbc
GH_TAGNAME =	$V
CATEGORIES=	databases java

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes


SITES.maven =	https://repo1.maven.org/maven2/
DISTFILES.maven = \
		org/xerial/sqlite-jdbc/${V}/sqlite-jdbc-${V}.jar \
		org/slf4j/slf4j-api/${SLF4J_V}/slf4j-api-${SLF4J_V}.jar
EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}


MODULES=	java
MODJAVA_VER=	21

BUILD_DEPENDS=	devel/maven

LIB_DEPENDS=	databases/sqlite3

USE_GMAKE=	Yes
SUBST_VARS +=	V

# Direct the xerial build system to link against OpenBSD's native library files
MAKE_FLAGS=	SQLITE_OBJ="${LOCALBASE}/lib/libsqlite3.a" \
		SQLITE_HEADER="${LOCALBASE}/include/sqlite3.h" \
		JAVA_HOME="${JAVA_HOME}"

ALL_TARGET=	native

JAR_DIR=	${PREFIX}/share/java

pre-build:
	mkdir -p ${WRKDIST}/target/classpath
	cp ${DISTDIR}/org/slf4j/slf4j-api/${SLF4J_V}/slf4j-api-${SLF4J_V}.jar \
		${WRKDIST}/target/classpath/slf4j-api.jar

post-build:
	mkdir -p ${WRKDIST}/dist
	cd ${WRKDIST}/dist && \
		unzip ${DISTDIR}/org/xerial/sqlite-jdbc/${V}/sqlite-jdbc-${V}.jar && \
		mkdir -p org/sqlite/native/ && \
		mv ${WRKSRC}/target/classes/org/sqlite/native/OpenBSD/ \
			org/sqlite/native/

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR}
	
	cd ${WRKSRC}/dist && \
		${JAVA_HOME}/bin/jar cfM ${JAR_DIR}/sqlite-jdbc-${V}.jar .

.include <bsd.port.mk>
