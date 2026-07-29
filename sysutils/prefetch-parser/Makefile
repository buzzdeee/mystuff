COMMENT =	Windows prefetch file parser

MODPY_DISTV =	1.0.0
DISTNAME =	prefetch_parser-${MODPY_DISTV}
PKGNAME =	py-prefetch_parser-${MODPY_DISTV}

CATEGORIES =	sysutils security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	poetry-core

BUILD_DEPENDS =	sysutils/libscca
RUN_DEPENDS =	sysutils/libscca

post-install:
	${INSTALL_SCRIPT} ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/prefetch_parser/prefetch_parser.py \
		${PREFIX}/bin/prefetch-parser
	perl -pi -e 'print "#!${MODPY_BIN}\n" if $$. == 1' ${PREFIX}/bin/prefetch-parser


.include <bsd.port.mk>

