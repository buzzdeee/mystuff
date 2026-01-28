COMMENT-main=	fast, scalable, and reliable data warehouse for OpenVox
COMMENT-plugin= OpenVoxDB terminus plugin

V=		8.12.1
DISTNAME=	openvoxdb-$V
PKGNAME-plugin= openvoxdb-termini-$V
CATEGORIES=	databases

HOMEPAGE=	https://voxpupuli.org/openvox/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

SITES=		https://s3.osuosl.org/openvox-artifacts/openvoxdb/${V}/

# Apachev2
PERMIT_PACKAGE=	Yes

MODULES=	java \
		lang/ruby
MODJAVA_VER=	17

MULTI_PACKAGES= -main -plugin

BUILD_DEPENDS = sysutils/coreutils
RUN_DEPENDS-plugin=sysutils/ruby-openvox/8>=8.0.0,<9.0.0v0

RUN_DEPENDS-main=${MODJAVA_RUN_DEPENDS} \
		java/javaPathHelper \
		shells/bash

MAKE_FLAGS +=	confdir="share/examples/" \
		datadir="share/puppetlabs" \
		bindir="bin" \
		rubylibdir="share/puppetlabs/puppet" \
		DESTDIR="${PREFIX}/"

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST =	${WRKDIR}/puppetdb-${V}
WRKSRC =	${WRKDIR}/puppetdb-${V}

post-extract:
	cp ${FILESDIR}/Makefile ${WRKSRC}/

do-configure:
	${SUBST_CMD} ${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/ssl-setup \
		${WRKSRC}/ext/default \
		${WRKSRC}/ext/config/conf.d/*.ini
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,g;' \
		${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/*

do-install:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		install-puppetdb install-puppetdb-termini
	${INSTALL_SCRIPT} ${WRKSRC}/ext/default \
		${PREFIX}/share/puppetlabs/puppetdb/cli/cli-defaults.sh

.include <bsd.port.mk>
