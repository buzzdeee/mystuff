COMMENT=	GNUstep integrated development environment

#GH_TAGNAME=     0.7.0
GH_COMMIT =	2b72df020d19e6f2612ffa78f30f4baa1f850b7c
GH_ACCOUNT=     gcasa
GH_PROJECT=     apps-scoremaker
DISTNAME=       ScoreMaker-0.0.1
CATEGORIES=	audio

#HOMEPAGE=	http://www.gnustep.org/experience/ProjectCenter.html

#SITES=		http://ftp.gnustep.org/pub/gnustep/dev-apps/
#SITES=		https://github.com/gnustep/apps-projectcenter/releases/download/projectcenter-0_7_0/

#SHARED_LIBS=	ProjectCenter 1.2

#RUN_DEPENDS +=	devel/gmake devel/gdb
MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX} AVFoundation

LIB_DEPENDS +=	x11/gnustep/avfoundation

CLANG_INCDIR !=	$(${CC} -print-file-name=include)/include
MAKE_FLAGS += 	ADDITIONAL_CPPFLAGS="-I${CLANG_INCDIR}"
MAKE_ENV += CFLAGS="${CFLAGS} -I${CLANG_INCDIR}" \
            OBJCFLAGS="${OBJCFLAGS} -I${CLANG_INCDIR}"


.include <bsd.port.mk>
