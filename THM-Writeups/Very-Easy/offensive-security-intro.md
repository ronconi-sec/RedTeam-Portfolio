# 🧠 TryHackMe – Offensive Security Intro 🛡️

**Date:** 2025-07-07
**Platform:** TryHackMe
**Profile:** [ronconi.sec](https://tryhackme.com/p/ronconi.sec)

---

## ✅ Overview
This introductory room simulates a vulnerable banking environment and challenges the user to identify exposed functionality through web content enumeration.

Access was granted to a standard user account, simulating a real-world scenario where attackers escalate access by discovering hidden routes not intended for public use.

---

## 🔍 Techniques Used
- Web content enumeration via dictionary-based brute-force
- Detection of exposed backend functionality
- Use of HTTP response codes to identify valid endpoints

---

## 🛠 Tool Used

**`dirb`** – Directory brute-forcing tool  
Wordlist: `/usr/share/dirb/wordlists/common.txt`

```bash
dirb http://fakebank.thm
