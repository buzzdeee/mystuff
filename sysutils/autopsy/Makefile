COMMENT=		GUI for The Sleuth Kit and other digital forensics tools

VERSION=		4.23.1
GH_ACCOUNT=		sleuthkit
GH_PROJECT=		autopsy
GH_TAGNAME=		autopsy-${VERSION}
DISTNAME=		autopsy-${VERSION}

# Define the Maven Central master site shortcut
SITES.maven =           https://repo1.maven.org/maven2/

# list taken from: bindings/java/ivy.xml
DISTFILES.maven = \
	org/postgresql/postgresql/42.7.5/postgresql-42.7.5.jar \
        com/mchange/c3p0/0.12.0/c3p0-0.12.0.jar \
        com/mchange/mchange-commons-java/0.4.0/mchange-commons-java-0.4.0.jar \
        com/zaxxer/SparseBitSet/1.3/SparseBitSet-1.3.jar \
	net/java/dev/jna/jna/5.18.1/jna-5.18.1.jar \
	net/java/dev/jna/jna-platform/5.18.1/jna-platform-5.18.1.jar


EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		sysutils security

HOMEPAGE=		https://www.autopsy.com/

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc

MODULES=		java
MODJAVA_VER=		21+
MODJAVA_BUILD =		ant
MODJAVA_BUILD_TARGET_NAME =	build-zip

BUILD_DEPENDS =		archivers/zip
# C/C++ Forensic & Database Libraries
LIB_DEPENDS =		java/openjfx \
			java/sevenzipjbinding \
			multimedia/libde265 \
			multimedia/libheif \
			databases/postgresql,-main \
			sysutils/afflib3 \
			security/libewf \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			sysutils/sleuthkit

# Runtime applications and GStreamer pipelines
RUN_DEPENDS =		sysutils/prefetch-parser \
			sysutils/testdisk \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-ugly

# Force Ant to bypass online download hooks
MAKE_FLAGS =		-Doffline=true \
			-Dskip.download=true \
			-Divy.mode=local \
			-Dbuild.compiler.emacs=true

MAKE_ENV +=		TSK_HOME="${WRKDIR}/tsk_bindings" \
			ASSUME_TSK_BUILD_FROM_SOURCE=false


NO_TEST =		Yes

pre-build:
	# 1. Create temporary directory mappings inside the port's workspace
	mkdir -p ${WRKDIR}/.ant/lib/
	mkdir -p ${WRKDIR}/tsk_bindings/bindings/java/dist/
	mkdir -p ${WRKDIR}/tsk_bindings/bindings/java/lib/
	mkdir -p ${WRKDIR}/tsk_bindings/case-uco/java/dist/
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar} ${WRKDIR}/tsk_bindings/bindings/java/lib/
.endfor
	cp ${TRUEPREFIX}/share/java/sqlite-jdbc-*.jar \
		${WRKDIR}/tsk_bindings/bindings/java/lib/
	
	# 4. Supply the missing JNA dependencies to satisfy the compiler paths
	mkdir -p ${WRKSRC}/CoreLibs/release/modules/ext
	mkdir -p ${WRKSRC}/Core/release/modules/ext
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar} ${WRKSRC}/CoreLibs/release/modules/ext/
	cp ${DISTDIR}/${jar} ${WRKSRC}/Core/release/modules/ext/
.endfor
	cp ${TRUEPREFIX}/share/java/openjfx/*openbsd* \
		${WRKSRC}/CoreLibs/release/modules/ext/
	# doesn't seem to be used, and causes lots of noisy exceptions with jdk-21
	rm -f ${WRKSRC}/thirdparty/jai/jai_imageio-1.1.jar


	# 2. Symlink the real system JARs into the expected relative layout structure
	ln -sf ${LOCALBASE}/share/java/sleuthkit-4.15.0.jar \
		${WRKDIR}/tsk_bindings/bindings/java/dist/sleuthkit-4.15.0.jar
	ln -sf ${LOCALBASE}/share/java/sleuthkit-caseuco-4.15.0.jar \
		${WRKDIR}/tsk_bindings/case-uco/java/dist/sleuthkit-caseuco-4.15.0.jar

do-install:
	mkdir -p ${PREFIX}
	cd ${PREFIX} && \
		unzip ${WRKSRC}/dist/autopsy.zip
#	rm -f ${PREFIX}/autopsy/autopsy/modules/ext/javafx-*
#	cp ${TRUEPREFIX}/share/java/openjfx/* \
#		${PREFIX}/autopsy/autopsy/modules/ext/
	cp ${FILESDIR}/autopsy.conf \
		${PREFIX}/autopsy/etc/
	
	chmod 755 ${PREFIX}/autopsy/bin/autopsy \
			${PREFIX}/autopsy/autopsy/solr/bin/autopsy-solr \
			${PREFIX}/autopsy/autopsy/solr/bin/solr


.include <bsd.port.mk>
