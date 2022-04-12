COMMENT =	ultimate WinRM shell for hacking/pentesting

DISTNAME =	evil-winrm-2.4
CATEGORIES =	security

HOMEPAGE =	https://github.com/Hackplayers/evil-winrm
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

#LGPL-3.0
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-winrm,${MODRUBY_FLAVOR}>=2.3.2 \
			devel/ruby-winrm-fs,${MODRUBY_FLAVOR}>=1.3.2


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
