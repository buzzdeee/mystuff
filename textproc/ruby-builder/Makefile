COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-3.3.0
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

# 96 runs, 185 assertions, 0 failures, 0 errors, 0 skips
MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	-I lib test_all

.include <bsd.port.mk>
