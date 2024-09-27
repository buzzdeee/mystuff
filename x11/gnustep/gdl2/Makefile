COMMENT =	GNUstep database abstraction layer

VERSION =	0.12.0.0
DISTNAME =	gdl2-${VERSION}
PKGNAME =	gnustep-gdl2-${VERSION}
GH_ACCOUNT =	gnustep
GH_PROJECT =	libs-gdl2
GH_COMMIT = 	d5f0d94b4b1c10359e69e96693cb70169b271d6c

SHLIB_VERSION =	0.0
SHARED_LIBS +=  EOAccess		${SHLIB_VERSION} \
		EOControl		${SHLIB_VERSION} \
		EOInterface		${SHLIB_VERSION} \
		EOModeler		${SHLIB_VERSION} \
		PostgreSQLEOAdaptor	${SHLIB_VERSION} \
		SQLite3EOAdaptor 	${SHLIB_VERSION}

CATEGORIES =	databases

HOMEPAGE =	https://mediawiki.gnustep.org/index.php/GDL

#SITES =		${SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
MODGNUSTEP_NEEDS_BACK =	No
WANTLIB +=		pq sqlite3 Gorm Renaissance c gnustep-gui
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=		databases/postgresql \
			databases/sqlite3 \
			x11/gnustep/gorm \
			x11/gnustep/renaissance

CONFIGURE_STYLE =	gnu
MAKE_FLAGS +=	EOAccess_INTERFACE_VERSION=${LIBEOAccess_VERSION} \
		EOControl_INTERFACE_VERSION=${LIBEOControl_VERSION} \
		EOInterface_INTERFACE_VERSION=${LIBEOInterface_VERSION} \
		EOModeler_INTERFACE_VERSION=${LIBEOModeler_VERSION} \
		PostgreSQLEOAdaptor_INTERFACE_VERSION=${LIBPostgreSQLEOAdaptor_VERSION} \
		SQLite3EOAdaptor_INTERFACE_VERSION=${LIBSQLite3EOAdaptor_VERSION} \

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
