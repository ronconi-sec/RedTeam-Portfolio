# ✝️ HackTheBox – Redeemer (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## Summary
A beginner-level machine that demonstrates **exploiting Redis misconfigurations** via open access and basic data interaction.  
At first glance, it looks trivial, but it’s a great reminder that **improperly secured services are easy targets in real environments**.

---

## Tools & Techniques
- `nmap` to detect open Redis service (port 6379)  
- Redis CLI to connect and interact with the DB  
- Basic enumeration and key/value inspection  

💡 *Pro tip:* Always check for **default or open services**—even seemingly harmless DBs like Redis can leak sensitive info.

---

## Exploitation Steps
1. Connected to Redis using **no authentication**.  
2. Enumerated default keys and values.  
3. Located the **flag stored in a key-value pair**.  

😂 *Note:* Initially thought I’d need a fancy exploit, but LOL, open Redis made it a quick win.

---

## Lessons Learned
- Default or misconfigured services are **low-hanging fruit** for attackers.  
- Redis is a common example in labs, but in the wild, many DBs are left exposed by mistake.  
- Reinforces the importance of **service enumeration** and checking default security settings.
