# 💃 HTB – Dancing (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## 🔍 Summary
A simple machine that introduces file transfer services and emphasizes basic credentials reuse.

---

## 🛠 Tools & Techniques
- `nmap` to identify SMB/FTP ports
- SMB enumeration with `smbclient` or `enum4linux`
- Basic credential testing

---

## 🧠 Exploitation Steps (No spoilers)
- Enumerated an open SMB share
- Accessed shared files without credentials
- Discovered flag stored in an accessible folder

---

## 💭 Notes
This machine reinforces enumeration techniques for SMB and common misconfigurations like open shares or guest access.