# 🦌 HTB – Fawn (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## 🔍 Summary
An introductory-level box that demonstrates how to exploit anonymous FTP access and perform basic file enumeration.

---

## 🛠 Tools & Techniques
- `nmap` for port scanning and service detection
- `ftp` for connecting to the service
- Linux CLI for basic file navigation and download

---

## 🧠 Exploitation Steps (No spoilers)
- Detected anonymous FTP access on port 21
- Logged in using anonymous credentials
- Enumerated available directories
- Found and downloaded the user flag file

---

## 💭 Notes
Fawn helps new users become comfortable with FTP interactions and shows why default anonymous logins can be dangerous if left misconfigured.