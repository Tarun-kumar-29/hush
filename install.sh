#!/bin/bash
# Install (or reinstall) Hush from the latest GitHub release.
#
#   curl -fsSL https://raw.githubusercontent.com/Tarun-kumar-29/hush/main/install.sh | bash
#
# Nothing else gets installed. After this, Hush and every app it makes keep
# themselves up to date.
set -euo pipefail

REPO="${HUSH_REPO:-Tarun-kumar-29/hush}"
ID="one.hush.maker"
URL="https://github.com/$REPO/releases/latest/download/Hush.zip"

ok()   { printf '\033[32m✓\033[0m %s\n' "$*"; }
step() { printf '\033[2m→\033[0m %s\n' "$*"; }
die()  { printf '\033[31m%s\033[0m\n' "$*"; exit 1; }

[[ "$(uname -s)" == "Darwin" ]] || die "Hush is a Mac app."
major=$(sw_vers -productVersion | cut -d. -f1)
(( major >= 12 )) || die "Hush needs macOS 12 (Monterey) or newer — this Mac has $(sw_vers -productVersion)."

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

step "downloading the latest Hush"
curl -fL --progress-bar "$URL" -o "$tmp/Hush.zip" || die "Couldn't download $URL"
ditto -x -k "$tmp/Hush.zip" "$tmp/x"
[[ -d "$tmp/x/Hush.app" ]] || die "The download didn't contain Hush.app."

DIR="/Applications"
[[ -w "$DIR" ]] || { DIR="$HOME/Applications"; mkdir -p "$DIR"; }

if [[ -d "$DIR/Hush.app" ]]; then
  existing=$(defaults read "$DIR/Hush.app/Contents/Info" CFBundleIdentifier 2>/dev/null || true)
  [[ "$existing" == "$ID" ]] || die "$DIR/Hush.app is a different app ($existing). Rename or trash it, then run this again."
fi

step "installing to $DIR"
osascript -e "quit app id \"$ID\"" >/dev/null 2>&1 || true
sleep 1
rm -rf "$DIR/Hush.app"
mv "$tmp/x/Hush.app" "$DIR/"
xattr -cr "$DIR/Hush.app" 2>/dev/null || true
codesign --force --sign - --identifier "$ID" "$DIR/Hush.app" >/dev/null 2>&1 || true

ok "Hush is in $DIR"
open "$DIR/Hush.app"
echo "  Paste a website, press Create App — it becomes its own locked Mac app."
