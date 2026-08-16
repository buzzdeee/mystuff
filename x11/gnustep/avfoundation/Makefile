COMMENT=	implementation of AVFoundation library

#GH_TAGNAME=     0.7.0
GH_COMMIT =	604b3ddac8e75313cf64e34fde5b5fea7c3a0080
GH_ACCOUNT=     gnustep
GH_PROJECT=     libs-av

DISTNAME=       AVFoundation-0.0.1
CATEGORIES=	audio

SHARED_LIBS +=	AVFoundation 0.0

MODULES=	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += avcodec avformat avutil fluidsynth objc2

LIB_DEPENDS +=	audio/fluidsynth \
		graphics/ffmpeg

MAKE_FLAGS=	AVFoundation_INTERFACE_VERSION=${LIBAVFoundation_VERSION}


.include <bsd.port.mk>
