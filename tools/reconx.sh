#!/usr/bin/env bash
# reconx.sh - simple reconnaissance helper
# Usage: bash reconx.sh target.com
# Requires: nmap, curl. Optional: gobuster, enum4linux
# NOTE: Only run against systems you own or are authorized to test.

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <target-IP-or-domain>"
  exit 1
fi

TARGET="$1"
OUTDIR="outputs/${TARGET}_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$OUTDIR"

echo "[*] Recon for $TARGET -> $OUTDIR"

echo "[*] Nmap: top ports + service detection"
nmap -Pn -sC -sV -oN "${OUTDIR}/nmap_top_services.txt" "$TARGET"

# HTTP directory bruteforce with gobuster if installed
if command -v gobuster >/dev/null 2>&1; then
  echo "[*] Running gobuster (common dirs) against http(s) on $TARGET"
  for proto in http https; do
    URL="${proto}://${TARGET}"
    # Adjust wordlist path if necessary
    gobuster dir -u "$URL" -w /usr/share/wordlists/dirb/common.txt -q -o "${OUTDIR}/gobuster_${proto}.txt" || true
  done
else
  echo "[!] gobuster not found — skipping dir brute-forcing (install gobuster to enable)"
fi

# SMB / Windows enumeration using enum4linux if present
if command -v enum4linux >/dev/null 2>&1; then
  echo "[*] Running enum4linux against $TARGET (if SMB is open)"
  enum4linux -a "$TARGET" > "${OUTDIR}/enum4linux.txt" || true
else
  echo "[!] enum4linux not found — skipping SMB enumeration"
fi

echo "[*] Saving basic HTTP headers (curl)"
if command -v curl >/dev/null 2>&1; then
  curl -s -I "http://${TARGET}" > "${OUTDIR}/http_headers_http.txt" || true
  curl -s -I "https://${TARGET}" > "${OUTDIR}/http_headers_https.txt" || true
fi

echo "[*] Done. Outputs in: $OUTDIR"
echo "Tip: inspect ${OUTDIR}/nmap_top_services.txt first to see open services."
