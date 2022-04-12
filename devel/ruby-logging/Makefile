COMMENT =		flexible logging library for use in Ruby

DISTNAME =		logging-2.3.0
CATEGORIES =		devel
HOMEPAGE =		https://github.com/TwP/logging
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-little-plugger,${MODRUBY_FLAVOR}>=1.1,<2 \
			converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.14,<2

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
