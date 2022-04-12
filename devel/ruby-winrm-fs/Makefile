COMMENT =		Windows Remote Management file system operations

DISTNAME =		winrm-fs-1.3.5
CATEGORIES =		devel
HOMEPAGE =		https://github.com/WinRb/winrm-fs
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		archivers/ruby-rubyzip,${MODRUBY_FLAVOR}>=2.0,<3 \
			devel/ruby-logging,${MODRUBY_FLAVOR}>=1.6.1,<3 \
			devel/ruby-winrm,${MODRUBY_FLAVOR}>=2.0,<3 \
			textproc/ruby-erubi,${MODRUBY_FLAVOR}>=1.8,<2

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
