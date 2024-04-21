COMMENT=	browser based analytics/search interface to ElasticSearch

V =		8.13.2
PKGNAME =	kibana-${V}
DISTNAME =	kibana-${V}-darwin-x86_64

CATEGORIES =	www

HOMEPAGE =	https://www.elastic.co/products/kibana

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# https://www.elastic.co/pricing/faq/licensing
# ELv2 or SSPL
PERMIT_PACKAGE =	Yes

SITES =		http://artifacts.elastic.co/downloads/kibana/

RUN_DEPENDS =	lang/node

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

WRKDIST =	${WRKDIR}/${PKGNAME}
SUBST_TARGETS =	${WRKSRC}/bin/*

do-install:
	${SUBST_CMD} ${SUBST_TARGETS}
	${INSTALL_DATA_DIR} ${PREFIX}/kibana
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/kibana/
	#${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/kibana/
	${INSTALL_DATA} ${WRKDIST}/config/kibana.yml \
		${PREFIX}/share/examples/kibana/
	rm -r ${WRKDIST}/*.orig.port ${WRKDIST}/{data,plugins} \
		${WRKDIST}/{bin/*.{orig.port,beforesubst},config,node}
	find ${WRKDIST} \( -name \.* -a \! -name \.cache \) -exec rm -rf {} +
	find ${WRKDIST} -name \*~ -delete
	cd ${WRKDIST} && cp -R * ${PREFIX}/kibana/
	${INSTALL_DATA_DIR} ${PREFIX}/kibana/config
	cd ${PREFIX}/kibana && \
		ln -s ${LOCALSTATEDIR}/kibana/data data && \
		ln -s ${LOCALSTATEDIR}/kibana/plugins plugins
	cd ${PREFIX}/kibana/config && \
		ln -s ${SYSCONFDIR}/kibana/kibana.yml

.include <bsd.port.mk>
