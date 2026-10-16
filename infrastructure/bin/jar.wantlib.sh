#!/bin/sh
set -e
arch=`uname -p | sed 's/^amd64/x86-64/'`

if ! command -v unzip >/dev/null 2>&1; then
    echo "Error: unzip is required but not installed." >&2
    exit 1
fi

if [ "$#" -ne 1 ]; then
    echo "Error: Exactly one argument is required." >&2
    echo "Usage: $0 /full/path/to/fake/dir" >&2
    exit 1
fi

DIR=${1}

if [ ! -d "$DIR" ]; then
    echo "Error: Path is not a directory: $DIR" >&2
    echo "Usage: $0 /full/path/to/fake/dir" >&2
    exit 1
fi

TMP_DIR=`mktemp -d /tmp/jarwantlib.XXXXXX`
cd $TMP_DIR

LIBS=""

for p in `find $DIR -name *.jar`; do
  f=`basename $p`
  f=${f%.jar}
  mkdir -p ${TMP_DIR}/$f
  cd $f
  for l in `unzip $p *lib*.so *lib*.so.* 2>/dev/null | grep inflating | cut -d: -f 2`; do
    l="${l# }"
    if file $l | grep -qi $arch; then
      if readelf -h $l | grep -qi OpenBSD; then
        for d in `readelf -d $l | grep NEEDED | cut -d\[ -f 2 | cut -d\] -f 1`; do
          d=${d%\.*\.*}
          d=${d%\.so}
          d=${d#lib}
          LIBS="${LIBS}
\t\t$d"
        done
      fi
    fi
    rm $l
  done
  cd ${TMP_DIR}
  rm -rf ${TMP_DIR}/$f
done
LIST=`printf '%s\n' "$LIBS" | sort -u`
echo "WANTLIB=${LIST}" | fmt -w 72
rmdir $TMP_DIR
