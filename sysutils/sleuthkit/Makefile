COMMENT=		forensic toolkit based on TCT

VERSION=		4.12.1
GH_ACCOUNT=		sleuthkit
GH_PROJECT=		sleuthkit
GH_TAGNAME=		sleuthkit-4.12.1
DISTNAME=		sleuthkit-${VERSION}

CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk 4.0
SHARED_LIBS +=		tsk_jni 0.0

HOMEPAGE=		https://www.sleuthkit.org/

MAINTAINER=		Remi Pointel <rpointel@openbsd.org>

# CPLv1 & IBM & GPLv2 & Apache2 & BSD & MIT
PERMIT_PACKAGE=	Yes

#SITES =	https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/

WANTLIB +=		bfio c m pthread ${COMPILER_LIBCXX} sqlite3 vhdi vmdk z
WANTLIB +=		ewf vslvm

COMPILER =		base-clang ports-gcc

MODULES=		java
MODJAVA_VER=		11+

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--without-afflib \
			PATH=${PATH}:${JAVA_HOME}/bin

#			--enable-offline \

CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no \
			ac_cv_header_postgresql_libpq_fe_h=no \
			PATH=${PATH}:${JAVA_HOME}/bin
RUN_DEPENDS =		converters/p5-DateManip
LIB_DEPENDS =		databases/sqlite3 \
			devel/apache-ant \
			devel/libbfio \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			security/libewf

NO_TEST =		Yes

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

post-install:
	mv ${PREFIX}/bin/pstat ${PREFIX}/bin/pstat.sleuthkit

.include <bsd.port.mk>
