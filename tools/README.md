# Tools

Small collection of scripts used during reconnaissance and routine pentest tasks.

## reconx.sh
- **Purpose:** quick reconnaissance helper: runs nmap, optional gobuster, optional enum4linux, and saves outputs.
- **Location:** `tools/reconx.sh`
- **Usage:** `bash tools/reconx.sh <target-IP-or-domain>`
- **Requirements:** nmap, curl. For more features: gobuster, enum4linux.
- **Output:** per-run timestamped folder `outputs/<target>_YYYYMMDD_HHMMSS/` with results.
- **Legal:** Only run this script against systems you own or are explicitly authorized to test.
