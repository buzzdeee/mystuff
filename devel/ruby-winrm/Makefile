COMMENT =		Ruby library for Windows Remote Management

DISTNAME =		winrm-2.3.6
CATEGORIES =		devel
HOMEPAGE =		https://github.com/WinRb/WinRM
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-gssapi,${MODRUBY_FLAVOR}>=1.2,<2 \
			devel/ruby-logging,${MODRUBY_FLAVOR}>=1.6.1,<3 \
			textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.2 \
			textproc/ruby-erubi,${MODRUBY_FLAVOR}>=1.8,<2 \
			textproc/ruby-gyoku,${MODRUBY_FLAVOR}>=1.0,<2 \
			textproc/ruby-nori,${MODRUBY_FLAVOR}>=2.0,<3 \
			www/ruby-httpclient,${MODRUBY_FLAVOR}>=2.2.0.2,<3 \
			www/ruby-ntlm,${MODRUBY_FLAVOR}>=0.6.3,<0.7

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
