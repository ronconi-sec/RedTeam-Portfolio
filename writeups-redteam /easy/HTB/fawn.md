# 🦌 HackTheBox – Fawn (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## Summary
An introductory-level box that demonstrates how to **exploit anonymous FTP access** and perform basic file enumeration.  
At first glance, it seems trivial, but it’s a solid reminder that **default anonymous logins are still a huge risk** in the wild.

---

## Tools & Techniques
- `nmap` for port scanning and service detection  
- `ftp` for connecting to the service  
- Linux CLI for basic file navigation and downloads  

💡 *Pro tip:* Always check for **anonymous or default credentials** first—they often save time on easy boxes.

---

## Exploitation Steps
1. Scanned the machine with `nmap` → found FTP open on port 21.  
2. Logged in using **anonymous credentials**.  
3. Enumerated available directories with `ls` → found files accessible without authentication.  
4. Downloaded the **user flag** file successfully.  

😂 *Note:* At first, I thought I would need brute-force creds, but LOL, anonymous FTP made it a one-step win.

---

## Lessons Learned
- Always test for **anonymous/default logins**—simple but often overlooked.  
- FTP enumeration is a great warm-up for learning **file system navigation** on remote services.  
- Easy machines like this reinforce **good enumeration habits** for harder boxes later.

