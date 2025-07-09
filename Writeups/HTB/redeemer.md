# ✝️ HTB – Redeemer (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## 🔍 Summary
A beginner-level box showcasing exploitation of Redis misconfiguration through open access and basic data interaction.

---

## 🛠 Tools & Techniques
- `nmap` to detect open Redis service (port 6379)
- Redis CLI to connect and interact with the DB
- Basic enumeration and key/value inspection

---

## 🧠 Exploitation Steps (No spoilers)
- Connected to Redis with no authentication
- Explored default keys and values
- Located flag in a key value within the DB

---

## 💭 Notes
Redeemer is great for understanding how improperly secured services like Redis can be an easy target in real environments.