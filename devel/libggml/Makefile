COMMENT=		tensor library for machine learning

GH_ACCOUNT=		ggml-org
GH_PROJECT=		ggml
GH_TAGNAME=		v0.23.0
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=		ggml 5.0
SHARED_LIBS +=		ggml-base 5.0

CATEGORIES=		devel

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB +=		${COMPILER_LIBCXX} m pthread

MODULES=		devel/cmake
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		math/openblas

CONFIGURE_ARGS=		-DGGML_CCACHE=OFF \
			-DGGML_LTO=OFF \
			-DGGML_NATIVE=OFF \
			-DGGML_RVV=OFF \
			-DGGML_BUILD_EXAMPLES=OFF \
			-DGGML_BUILD_TESTS=OFF \
			-DGGML_BLAS=ON \
			-DGGML_BLAS_VENDOR=OpenBLAS \
			-DGGML_BACKEND_DL=ON \
			-DGGML_BACKEND_DIR=${PREFIX}/lib

.if ${MACHINE_ARCH:Mamd64}
# Enable multi-variant dispatch and explicitly target Intel N95 ISA features
CONFIGURE_ARGS+=	-DGGML_CPU_ALL_VARIANTS=ON \
			-DGGML_AVX=ON \
			-DGGML_AVX2=ON \
			-DGGML_FMA=ON \
			-DGGML_F16C=ON \
			-DGGML_AVX512=OFF \
			-DGGML_AVX512_VBMI=OFF \
			-DGGML_AVX512_VNNI=OFF \
			-DGGML_AMX=OFF
PKG_ARGS+=		-Damd64=1
PKG_ARGS+=		-Dcpu=0
.else
CONFIGURE_ARGS+=	-DGGML_CPU_ALL_VARIANTS=OFF \
			-DGGML_AVX=OFF \
			-DGGML_AVX2=OFF \
			-DGGML_FMA=OFF \
			-DGGML_F16C=OFF
PKG_ARGS+=		-Damd64=0
PKG_ARGS+=		-Dcpu=1
.endif

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Maarch64}
CONFIGURE_ARGS+=	-DGGML_VULKAN=ON
BUILD_DEPENDS+=		graphics/shaderc \
			graphics/spirv-headers
LIB_DEPENDS+=		graphics/vulkan-loader
WANTLIB+=		vulkan
PKG_ARGS+=		-Dvulkan=1
.else
CONFIGURE_ARGS+=	-DGGML_VULKAN=OFF
PKG_ARGS+=		-Dvulkan=0
.endif

.include <bsd.port.mk>
