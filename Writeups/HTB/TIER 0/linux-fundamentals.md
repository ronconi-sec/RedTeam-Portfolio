# 🐧 HackTheBox – Linux Fundamentals

**Date:** 2025-07-11  
**Category:** TIER 0  
**Platform:** HackTheBox  
**Status:** Completed

---

## ✅ Summary

The **Linux Fundamentals** module on HackTheBox is an in-depth introduction to the Linux Operating System, with a focus on its relevance to cybersecurity. It covers the Linux structure, core philosophy, components, architecture, file system hierarchy, shell usage, permissions, package management, task scheduling, and network services.

This module lays the foundation needed for both red and blue team roles, especially when working with or attacking Linux-based systems.

---

## 🧭 Topics Covered

- 🏛️ History & Philosophy of Linux
- 🧱 Linux Architecture & File Hierarchy (`/`, `/etc`, `/home`, `/var`, etc.)
- 🐚 Introduction to Shells (Bash, Zsh, etc.)
- 🧑‍💻 Bash Prompt Customization
- ❓ Command help via `man`, `--help`, `apropos`
- 🔍 File discovery tools: `find`, `locate`, `which`
- 🗂️ File permissions: chmod, chown, SUID, SGID, Sticky Bit
- 📦 Package managers: `apt`, `dpkg`, `snap`, `pip`, etc.
- ⏰ Task Scheduling: `cron` vs `systemd` timers
- 🌐 Network services: SSH, FTP, and more

---

## 🧠 Key Takeaways

- **Everything is a file**: The Linux philosophy promotes modularity and visibility.
- **Bash prompt** can be customized for tracking privilege, time, and paths.
- `man`, `--help`, and `apropos` are essential for tool discovery.
- `find` and `locate` are critical for fast enumeration.
- Understanding permissions is vital for privilege escalation & defense.
- SUID/SGID/Sticky Bits are potential attack vectors when misconfigured.
- Task scheduling via `cron` or `systemd` can be used for persistence.
- `apt-cache`, `apt list --installed`, and `dpkg -i` are key for package inspection.
- Services like OpenSSH must be secured; insecure protocols like FTP are risky.

---

## 🔧 Useful Commands

```bash
# Help & discovery
man <command>
<command> --help
apropos <keyword>

# File & binary search
which python
find / -name "*.conf" 2>/dev/null
locate *.bak

# Permissions
chmod 755 file.sh
chown user:group file.sh

# SUID files (priv esc vector)
find / -perm -4000 -type f 2>/dev/null

# Packages
apt update && apt upgrade -y
apt install <package> -y
dpkg -i file.deb

# Task scheduling
crontab -e
systemctl start mytimer.timer

# Network services
systemctl status ssh
sudo apt install openssh-server -y
```

---

## 💬 Notes

Linux is the backbone of nearly all server infrastructure and cybersecurity toolkits. Learning it deeply is not optional—it’s mandatory for any serious security practitioner. This module is especially useful because it goes beyond just commands and dives into **conceptual understanding**, real-world analogies, and **practical examples** that show how attackers and defenders both interact with Linux systems.