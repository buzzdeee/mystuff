COMMENT =		OpenVox server

VERSION =		8.11.0
DISTNAME =		openvox-server-${VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://voxpupuli.org/openvox/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

PERMIT_PACKAGE =	Yes

SITES =			https://s3.osuosl.org/openvox-artifacts/openvox-server/${VERSION}/

MODULES =		java \
			lang/ruby
MODJAVA_VER =		17+

RUN_DEPENDS =		databases/openvoxdb/8,-plugin \
			java/javaPathHelper \
			${MODJAVA_RUN_DEPENDS} \
			shells/bash \
			sysutils/ruby-openvox/8 \
			sysutils/ruby-openvoxserver-ca,${MODRUBY_FLAVOR}

MODRUBY_ADJ_FILES =	ca
USE_GMAKE =	Yes
MAKE_FLAGS +=	confdir="share/examples/" \
                datadir="share/puppetlabs/" \
                bindir="bin" \
                rubylibdir="${MODRUBY_SITEDIR}" \
                DESTDIR="${PREFIX}/"


NO_BUILD=       Yes
NO_TEST=        Yes

WRKDIST =       ${WRKDIR}/puppetserver-${VERSION}
WRKSRC =        ${WRKDIR}/puppetserver-${VERSION}

SUBST_VARS +=	MODRUBY_REV MODRUBY_FLAVOR

do-install:
	install -d -m 0755 "${PREFIX}/share/examples/puppetlabs/puppetserver/services.d"
	cp ${WRKSRC}/ext/system-config/services.d/bootstrap.cfg \
		${PREFIX}/share/examples/puppetlabs/puppetserver/services.d/
	${SUBST_CMD} ${WRKSRC}/ext/default ${WRKSRC}/ext/bin/puppetserver ${WRKSRC}/ext/cli/* \
			${WRKSRC}/ext/config/conf.d/puppetserver.conf
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} install-puppetserver
	cp ${WRKSRC}/ext/default ${PREFIX}/share/puppetlabs/puppetserver/cli/cli-defaults.sh
	rm -rf ${PREFIX}/var

.include <bsd.port.mk>
