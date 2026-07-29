COMMENT=		forensic toolkit based on TCT

VERSION =		4.15.0
DISTNAME=		sleuthkit-${VERSION}

CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk 4.0
SHARED_LIBS +=		tsk_jni 0.0

HOMEPAGE =		https://www.sleuthkit.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# CPLv1 & IBM & GPLv2 & Apache2 & BSD & MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	bfio c m pthread ${COMPILER_LIBCXX} sqlite3 vhdi vmdk z
WANTLIB +=	afflib aio_compat crypto curl expat nghttp2 nghttp3
WANTLIB +=	ngtcp2 ngtcp2_crypto_libressl readline ssl ewf vslvm

# Define the Maven Central master site shortcut
SITES.maven =		https://repo1.maven.org/maven2/
SITES.uco =		${SITES.maven}

# list taken from: bindings/java/ivy.xml
DISTFILES.maven = \
	joda-time/joda-time/2.13.1/joda-time-2.13.1.jar \
	com/google/guava/guava/33.4.0-jre/guava-33.4.0-jre.jar \
	com/google/guava/failureaccess/1.0.2/failureaccess-1.0.2.jar \
	org/apache/commons/commons-lang3/3.17.0/commons-lang3-3.17.0.jar \
	commons-validator/commons-validator/1.9.0/commons-validator-1.9.0.jar \
	com/google/code/gson/gson/2.12.1/gson-2.12.1.jar \
	junit/junit/4.13.2/junit-4.13.2.jar \
	io/github/java-diff-utils/java-diff-utils/4.12/java-diff-utils-4.12.jar \
	org/postgresql/postgresql/42.7.5/postgresql-42.7.5.jar \
	com/mchange/c3p0/0.12.0/c3p0-0.12.0.jar \
	com/mchange/mchange-commons-java/0.4.0/mchange-commons-java-0.4.0.jar \
	com/zaxxer/SparseBitSet/1.3/SparseBitSet-1.3.jar

# list taken from: case-uco/java/ivy.xml and
# case-uco/java/nbproject/project.properties
DISTFILES.uco = \
	com/google/code/gson/gson/2.8.5/gson-2.8.5.jar \
	junit/junit/4.12/junit-4.12.jar \
	org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
	

SITES =	https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/
EXTRACT_ONLY = ${DISTNAME}.tar.gz

MODULES =		java
MODJAVA_VER =   	21

COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes

# not using MODJAVA_BUILD=ant on purpose
BUILD_DEPENDS =		devel/apache-ant
LIB_DEPENDS =		databases/sqlite3 \
			devel/libbfio \
			sysutils/afflib3 \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			security/libewf
RUN_DEPENDS =		converters/p5-DateManip

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--enable-java \
			--enable-offline \
			PATH=${PATH}:${JAVA_HOME}/bin \
			CFLAGS="${CFLAGS} -I${JAVA_HOME}/include/openbsd" \
			CPPFLAGS="${CPPFLAGS} -I${JAVA_HOME}/include/openbsd" \
			CXXFLAGS="${CXXFLAGS} -I${JAVA_HOME}/include/openbsd"


CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no \
			ac_cv_header_postgresql_libpq_fe_h=no

NO_TEST =		Yes
SUBST_VARS +=		VERSION

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

pre-build:
	mkdir -p ${WRKBUILD}/bindings/java/jni/.libs/
	ln -sf ${WRKBUILD}/bindings/java/jni/.libs/libtsk_jni.so.0.0 \
		${WRKBUILD}/bindings/java/jni/.libs/libtsk_jni.so
	mkdir -p ${WRKBUILD}/bindings/java/lib
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar} ${WRKBUILD}/bindings/java/lib/
.endfor
	cp ${TRUEPREFIX}/share/java/sqlite-jdbc-*.jar \
		${WRKBUILD}/bindings/java/lib/
	
	mkdir -p ${WRKBUILD}/case-uco/java/lib/
.for jar in ${DISTFILES.uco}
	cp ${DISTDIR}/${jar} ${WRKBUILD}/case-uco/java/lib/
.endfor


post-install:
	mv ${PREFIX}/bin/pstat ${PREFIX}/bin/pstat.sleuthkit

.include <bsd.port.mk>
