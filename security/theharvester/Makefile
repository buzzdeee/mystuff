COMMENT =	information gathering suite

VERSION =	4.5.1
DISTNAME =	theharvester-${VERSION}

GH_ACCOUNT =	laramies
GH_PROJECT =	theHarvester
GH_TAGNAME =	${VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.edge-security.com/theharvester.php

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

#FIX_CRLF_FILES =	discovery/dnssearch.py \
#			discovery/googlesearch.py \
#			discovery/wfuzz_search.py

MODULES =	lang/python

RUN_DEPENDS =	databases/py-aiosqlite${MODPY_FLAVOR} \
		devel/py-aiomultiprocess${MODPY_FLAVOR} \
		devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-certifi${MODPY_FLAVOR} \
		devel/py-tqdm${MODPY_FLAVOR} \
		devel/py-uvloop${MODPY_FLAVOR} \
		net/py-aiodns${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		net/py-websockets${MODPY_FLAVOR} \
		security/py-censys${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-ujson${MODPY_FLAVOR} \
		textproc/py-pyaml${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-pyee${MODPY_FLAVOR} \
		www/py-pyppeteer${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

MODPY_ADJ_FILES =	theHarvester.py

NO_BUILD =	Yes

INSTDIR =	${PREFIX}/share/theharvester

#pre-configure:
#.for f in dnssearch googlesearch wfuzz_search
#	${SUBST_CMD} ${WRKSRC}/discovery/$f.py
#.endfor

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} tests/myparser_test.py

do-install:
	rm ${WRKDIST}/.gitignore
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theHarvester
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>
