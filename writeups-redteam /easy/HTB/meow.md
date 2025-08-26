# 🐱 HackTheBox – Meow (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## Summary
A beginner-friendly machine that focuses on **basic network interaction and enumeration**.  
At first glance it looks trivial, but it’s a solid reminder of **the fundamentals: ping, nmap, and basic remote login**.

---

## Tools & Techniques
- `ping` to verify connectivity  
- `nmap` to identify open ports and services  
- `telnet` for remote login  

💡 *Pro tip:* Even on very easy machines, **document every step**. Recruiters love seeing a clear thought process.

---

## Exploitation Steps
1. Scanned the target → found **Telnet open on port 23**.  
2. Tried default credentials (no password) → gained access as a privileged user.  
3. Navigated the system and retrieved the **system flag** from its standard location.  

😂 *Note:* At first, I overcomplicated it by guessing passwords, but LOL default creds made it a quick win.

---

## Lessons Learned
- Basic TCP service enumeration is **always worth checking**.  
- Telnet with default credentials is still a risk in real-world networks.  
- Even trivial machines are perfect for **reinforcing core fundamentals** in reconnaissance and CLI usage.
