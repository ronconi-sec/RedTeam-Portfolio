# 🧠 TryHackMe – Windows Fundamentals Part 1

**Date:** 2025-07-10  
**Category:** TIER 0  
**Platform:** TryHackMe  
**Status:** Completed

---

## ✅ Summary
This module offers a foundational overview of the Windows Operating System and its user interface. It introduces the desktop layout, navigation components (Start Menu, Taskbar, Notification Area), UAC, Control Panel, NTFS, and Task Manager. Ideal for beginners or Linux-based professionals transitioning into Windows environments.

---

## 🧭 Topics Covered
- Windows OS history (XP, Vista, 7, 10, 11, Server 2019)
- Windows Desktop GUI (Start Menu, Cortana, Taskbar, Notification Area)
- NTFS File System overview and permissions
- UAC (User Account Control) functionality and purpose
- User types: Administrator vs Standard User
- Local Users and Groups (lusrmgr.msc)
- Control Panel vs Settings Menu
- Task Manager and system monitoring

---

## 🔐 Key Takeaways
- **NTFS** allows file encryption, permissions, compression, and supports files >4GB.
- **UAC** prevents malware from auto-elevating by prompting admin credentials.
- **Built-in Accounts** like Administrator and Guest have specific roles.
- **Start Menu Tiles** and search allow fast access to programs.
- **Task Manager** is accessible via `Ctrl + Shift + Esc`.

---

## 📁 Commands & Tools Used
- `lusrmgr.msc` → Open Local Users and Groups
- `%windir%` → Environment variable for Windows directory
- Right-click context menus for permissions, personalization, taskbar settings

---

## 💡 Notes
The module sets a strong base for Windows-focused cybersecurity work. Features like NTFS, user permissions, and UAC are directly connected to real-world attack vectors and defense strategies. Understanding the GUI components, registry basics, and system navigation is essential for anyone looking to escalate privileges or detect abnormal behavior.

---

## 🎯 Recommendation
If you’re already comfortable with Linux, this module is a great checkpoint to start mapping equivalences (e.g., `/etc/passwd` vs `lusrmgr.msc`, `chmod` vs NTFS ACLs, etc.). This foundation will serve you well for Windows privilege escalation and Blue Team scenarios.