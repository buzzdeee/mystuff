COMMENT =		autoclicker for X11

VERSION =		1.5.1
GH_ACCOUNT =		robiot
GH_PROJECT =		XClicker
GH_TAGNAME =		v${VERSION}
DISTNAME =		xclicker-${VERSION}
CATEGORIES =		x11 

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPL 3.0
PERMIT_PACKAGE	=	Yes

WANTLIB += X11 Xi Xtst c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3

BUILD_DEPENDS =		devel/meson
LIB_DEPENDS =		x11/gtk+3
RUN_DEPENDS =           devel/desktop-file-utils
CONFIGURE_STYLE =	none

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/xclicker-${VERSION}
ALL_TARGET =		release

.include <bsd.port.mk>
