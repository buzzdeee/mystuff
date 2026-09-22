COMMENT =		JavaFX/OpenJFX client toolkit

BASE_V =		21.0.11
BASE_REV =		4
V =			${BASE_V}.${BASE_REV}
GH_ACCOUNT =		openjdk
GH_PROJECT =		jfx21u
GH_TAGNAME =		${BASE_V}+${BASE_REV}
PKGNAME =		openjfx-${V}

CATEGORIES =		java

DISTFILES =		jfx-${V}.tar.gz


# Master Sites
SITES.github =          https://github.com/
SITES.gradle =		https://services.gradle.org/distributions/
SITES.maven =           https://repo1.maven.org/maven2/

# Versions
V_ICU_DATA =            73_1
V_ICU_REL =             release-73-1
V_LUCENE =              7.7.3
V_ANTLR4 =              4.7.2
V_ANTLR3 =              3.5.2
V_TREELAYOUT =          1.0.3
V_ST4 =                 4.1
V_JAVAX_JSON =          1.0.4
V_ICU4J =               61.1

DISTFILES.gradle =	gradle-8.4-bin.zip
# GitHub Downloads
DISTFILES.github = \
        {unicode-org/icu/releases/download/${V_ICU_REL}/}icu4c-${V_ICU_DATA}-data-bin-l.zip

# Maven Central Downloads (POMs and JARs)
DISTFILES.maven = \
        {org/apache/lucene/lucene-core/${V_LUCENE}/}lucene-core-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-queryparser/${V_LUCENE}/}lucene-queryparser-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-grouping/${V_LUCENE}/}lucene-grouping-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-parent/${V_LUCENE}/}lucene-parent-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-solr-grandparent/${V_LUCENE}/}lucene-solr-grandparent-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-queries/${V_LUCENE}/}lucene-queries-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-sandbox/${V_LUCENE}/}lucene-sandbox-${V_LUCENE}.pom \
        {org/apache/lucene/lucene-queryparser/${V_LUCENE}/}lucene-queryparser-${V_LUCENE}.jar \
        {org/apache/lucene/lucene-core/${V_LUCENE}/}lucene-core-${V_LUCENE}.jar \
        {org/apache/lucene/lucene-queries/${V_LUCENE}/}lucene-queries-${V_LUCENE}.jar \
        {org/apache/lucene/lucene-grouping/${V_LUCENE}/}lucene-grouping-${V_LUCENE}.jar \
        {org/apache/lucene/lucene-sandbox/${V_LUCENE}/}lucene-sandbox-${V_LUCENE}.jar \
        {org/antlr/antlr4/${V_ANTLR4}/}antlr4-${V_ANTLR4}.pom \
        {org/antlr/antlr4-master/${V_ANTLR4}/}antlr4-master-${V_ANTLR4}.pom \
        {org/antlr/antlr-runtime/${V_ANTLR3}/}antlr-runtime-${V_ANTLR3}.pom \
        {org/abego/treelayout/org.abego.treelayout.core/${V_TREELAYOUT}/}org.abego.treelayout.core-${V_TREELAYOUT}.pom \
        {org/antlr/antlr4-runtime/${V_ANTLR4}/}antlr4-runtime-${V_ANTLR4}.pom \
        {org/antlr/antlr-master/${V_ANTLR3}/}antlr-master-${V_ANTLR3}.pom \
        {org/antlr/ST4/${V_ST4}/}ST4-${V_ST4}.pom \
        {org/glassfish/javax.json/${V_JAVAX_JSON}/}javax.json-${V_JAVAX_JSON}.pom \
        {com/ibm/icu/icu4j/${V_ICU4J}/}icu4j-${V_ICU4J}.pom \
        {org/glassfish/json/${V_JAVAX_JSON}/}json-${V_JAVAX_JSON}.pom \
        {org/antlr/antlr-runtime/${V_ANTLR3}/}antlr-runtime-${V_ANTLR3}.jar \
        {org/antlr/antlr4/${V_ANTLR4}/}antlr4-${V_ANTLR4}-complete.jar \
        {org/antlr/antlr4-runtime/${V_ANTLR4}/}antlr4-runtime-${V_ANTLR4}.jar \
        {org/antlr/ST4/${V_ST4}/}ST4-${V_ST4}.jar \
        {org/abego/treelayout/org.abego.treelayout.core/${V_TREELAYOUT}/}org.abego.treelayout.core-${V_TREELAYOUT}.jar \
        {org/glassfish/javax.json/${V_JAVAX_JSON}/}javax.json-${V_JAVAX_JSON}.jar \
        {com/ibm/icu/icu4j/${V_ICU4J}/}icu4j-${V_ICU4J}.jar

EXTRACT_ONLY =	${DISTFILES}


HOMEPAGE =		https://openjfx.io/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

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

MAKE_FLAGS =		NUM_COMPILE_THREADS=${MAKE_JOBS}

post-extract:
	cp ${FILESDIR}/openbsd.gradle \
		${WRKSRC}/buildSrc
	mkdir -p ${WRKDIR}/.gradle/wrapper/dists
	cp ${DISTDIR}/${DISTFILES.gradle} ${WRKDIR}/.gradle/wrapper/dists/
#	mkdir -p ${WRKDIR}/.gradle/caches/modules-2/files-2.1/
#.for file in ${DISTFILES.maven} ${DISTFILES.github}
#	# Copy each file into the offline build cache directory
#	cp ${DISTDIR}/${file:C/\{.*\}//} ${WRKDIR}/.gradle/caches/modules-2/files-2.1/
#.endfor

	printf 'allprojects {\n  repositories {\n    clear()\n    flatDir { dirs "%s" }\n  }\n}\n' \
		"${DISTDIR}" > ${WRKDIR}/init.gradle


do-build:
	cd ${WRKSRC} && \
	    chmod 755 ./gradlew && \
	    ${SETENV} GRADLE_USER_HOME=${WRKDIR}/.gradle \
		JAVA_HOME=${LOCALBASE}/jdk-21 \
	    ./gradlew \
	        --no-daemon \
		--offline \
		--init-script=${WRKDIR}/init.gradle \
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
