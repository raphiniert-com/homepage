#!/usr/bin/env bash
set -euo pipefail

# Install the official Hugo Extended binary into the currently activated
# conda environment. Use this if conda-forge did not provide a hugo-extended
# package for your desired version.
# Usage: ./scripts/install-hugo-extended.sh [version]

VERSION="${1:-0.124.1}"

if [ -z "${CONDA_PREFIX-}" ]; then
  echo "Error: no active conda environment detected. Activate your env first:"
  echo "  conda activate academia-build"
  exit 1
fi

OS_NAME="$(uname -s)"
ARCH_NAME="$(uname -m)"

case "$OS_NAME" in
  Linux) OS_PLATFORM="Linux-64bit" ;;
  Darwin)
    if [ "$ARCH_NAME" = "arm64" ] || [ "$ARCH_NAME" = "aarch64" ]; then
      OS_PLATFORM="macOS-ARM64"
    else
      OS_PLATFORM="macOS-64bit"
    fi
    ;;
  *)
    echo "Unsupported OS: $OS_NAME" >&2
    exit 2
    ;;
esac

TARBALL="hugo_extended_${VERSION}_${OS_PLATFORM}.tar.gz"
URL="https://github.com/gohugoio/hugo/releases/download/v${VERSION}/${TARBALL}"

TMPDIR="$(mktemp -d)"
echo "Downloading Hugo Extended ${VERSION} for ${OS_PLATFORM}..."
curl -L "$URL" -o "$TMPDIR/$TARBALL"

echo "Extracting..."
tar -xzf "$TMPDIR/$TARBALL" -C "$TMPDIR"

if [ ! -x "$TMPDIR/hugo" ]; then
  echo "Error: extracted archive does not contain an executable 'hugo'" >&2
  ls -la "$TMPDIR"
  exit 3
fi

DEST_BIN="${CONDA_PREFIX}/bin/hugo"

echo "Installing into ${DEST_BIN} (overwriting if exists)..."
mv "$TMPDIR/hugo" "$DEST_BIN"
chmod +x "$DEST_BIN"

echo "Verifying install..."
"$DEST_BIN" version

if "$DEST_BIN" version 2>&1 | grep -iq extended; then
  echo "Hugo Extended ${VERSION} installed successfully in ${CONDA_PREFIX}."
else
  echo "Warning: installed Hugo does not report 'extended'. Check version output above." >&2
fi

rm -rf "$TMPDIR"

echo "Done."
