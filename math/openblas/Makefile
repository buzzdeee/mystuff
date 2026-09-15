COMMENT =	optimized BLAS library based on GotoBLAS2

V =		0.3.34
GH_ACCOUNT =	OpenMathLib
GH_PROJECT =	OpenBLAS
GH_TAGNAME =	v${V}
PKGNAME =	openblas-${V}

SHARED_LIBS +=  openblas                  0.0 # [x.y]

CATEGORIES =	math

HOMEPAGE =	https://www.openblas.net/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

MODULES =	fortran
MODFORTRAN_COMPILER = gfortran

USE_GMAKE =	Yes

OPENBLAS_INCLUDE_DIR = ${PREFIX}/include/openblas

# OpenBSD Makeflags an OpenBLAS gmake übergeben
MAKE_FLAGS =	CC="${CC}" \
		FC="${MODFORTRAN_BUILD_DEPENDS}" \
		COMMON_OPT="${CFLAGS}" \
		NUM_THREADS=64 \
		USE_OPENMP=0 \
		NO_AFFINITY=1 \
		LIBOPENBLAS_VERSION="${LIBopenblas_VERSION}" \
		OPENBLAS_INCLUDE_DIR=${OPENBLAS_INCLUDE_DIR} \
		EXTRALIB="-lm -lpthread" \
		LDFLAGS="-lm -lpthread"

# Vermeidet Probleme mit Memory Mapping unter OpenBSD
MAKE_ENV =	DYNAMIC_ARCH=1

NO_TEST =	Yes

FAKE_FLAGS=	PREFIX=/usr/local

XXXdo-install:
	${INSTALL_DATA} ${WRKSRC}/libopenblas.a ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/libopenblas.so.${LIBopenblas_VERSION} ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/include/openblas
	${INSTALL_DATA} ${WRKSRC}/cblas.h ${PREFIX}/include/openblas/
	${INSTALL_DATA} ${WRKSRC}/openblas_config.h ${PREFIX}/include/openblas/
	${INSTALL_DATA} ${WRKSRC}/f77blas.h ${PREFIX}/include/openblas/
	ln -sf openblas/cblas.h ${PREFIX}/include/cblas.h

.include <bsd.port.mk>

