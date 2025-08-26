# 💃 HackTheBox – Dancing (Very Easy)

**Date:** 2025-07-08  
**Category:** Warm-up  
**Difficulty:** Very Easy  

---

## Summary
A beginner-friendly machine that focuses on **file transfer services** and highlights the risks of **basic credential reuse**.  
At first glance, it looked trivial, but it’s a great reminder that **open shares are everywhere if you look carefully**.

---

## Tools & Techniques
- `nmap` to identify SMB/FTP ports  
- SMB enumeration with `smbclient` or `enum4linux`  
- Basic credential testing (default / weak passwords)  

💡 *Tip:* Even for very easy machines, take notes on the commands you run; recruiters like to see your thought process.

---

## Exploitation Steps
1. Ran `nmap` and found SMB open.  
2. Enumerated SMB shares using `smbclient` → discovered a publicly accessible folder.  
3. Browsed shared files and found the flag without needing credentials.  

😂 *Note:* At first, I tried guessing credentials, but LOL the guest access was enabled—classic beginner trap.

---

## Lessons Learned
- SMB enumeration is **always worth checking**, even if ports seem trivial.  
- Open shares + guest access = easy flags if you know how to look.  
- Small wins like this **reinforce enumeration habits** for more complex machines.
