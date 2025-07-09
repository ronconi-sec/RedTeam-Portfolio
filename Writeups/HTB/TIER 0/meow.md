# 🐱 HTB – Meow (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## 🔍 Summary
A beginner-friendly machine focused on basic network interaction and enumeration. The challenge walks through simple commands like `ping`, `nmap`, and introduces `telnet`.

---

## 🛠 Tools & Techniques
- `ping` to verify connectivity
- `nmap` to identify open ports and services
- `telnet` for remote login

---

## 🧠 Exploitation Steps (No spoilers)
- Found port 23 (Telnet) open
- Used default credentials with no password
- Gained access as a privileged user
- Retrieved system flag from standard location

---

## 💭 Notes
While extremely simple, this box reinforces fundamentals like TCP services, command-line usage, and recon methodology. Perfect for complete beginners or warming up.