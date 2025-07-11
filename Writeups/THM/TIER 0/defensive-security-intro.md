# 🛡️ TryHackMe – Defensive Security Intro

**Date:** 2025-07-07  
**Platform:** TryHackMe  
**Profile:** [ronconi.sec](https://tryhackme.com/p/ronconi.sec)

---

## ✅ Overview

This room introduces the fundamentals of **defensive security**, which focuses on:

- Preventing intrusions
- Detecting and responding to attacks when they occur

It also covers core areas like SOC operations, Threat Intelligence, DFIR (Digital Forensics and Incident Response), and Malware Analysis. Unlike offensive labs, this one is theory-based and simulates the role of a SOC analyst through a simplified SIEM interface.

---

## 🔍 Topics Covered

- **Blue Team** responsibilities
- **Security Operations Center (SOC)**
- **Threat Intelligence**
- **DFIR**: Digital Forensics and Incident Response
- **Malware Analysis**
- **SIEM usage** and simulated threat investigation

---

## 🧠 Key Concepts

### 🔵 Blue Team
Focuses on protecting systems through training, asset management, patching, firewalls, IPS, and monitoring/logging.

---

### 🏢 Security Operations Center (SOC)
A SOC is a team responsible for monitoring the organization's systems and network to detect threats like:
- Vulnerabilities
- Unauthorized logins
- Policy violations
- Intrusions

SOC teams often use SIEM tools to detect abnormal behavior.

---

### 🔎 Threat Intelligence
Collects and analyzes data from logs, open-source intel, and network activity to identify and anticipate adversary behavior. Helps build a threat-informed defense strategy.

---

### 🧬 Digital Forensics and Incident Response (DFIR)

**Digital Forensics**:
- File system analysis
- Memory dumps
- System logs
- Network logs

**Incident Response** includes four main phases:
1. Preparation  
2. Detection and Analysis  
3. Containment, Eradication & Recovery  
4. Post-Incident Review

---

### 🐛 Malware Analysis

Types of malware:
- **Virus**: Attaches to programs and spreads
- **Trojan Horse**: Disguises as legit software
- **Ransomware**: Encrypts user files and demands payment

Analysis methods:
- **Static analysis** (code inspection)
- **Dynamic analysis** (executing in sandbox)

---

## 💻 Hands-On: SIEM Simulation

I was placed in a simulated SIEM interface as a SOC analyst for a bank. Tasks included:

1. **Detecting malicious IP address** (highlighted red)
2. **Verifying IP reputation** through external lookup
3. **Escalating incident** to the correct party → **SOC Team Leader**
4. **Blocking the IP** via firewall block list
5. ✅ Final result: Successfully blocked threat  
   → **Flag: `THM{THREAT-BLOCKED}`**

---

## 💬 Personal Notes

Even though this room is considered Easy, it realistically introduces Blue Team workflows and helped me understand the full lifecycle of defensive actions.

As someone focused on offensive security, I recognize the value of understanding how defenders think and operate. This lab was a solid starting point for building that perspective.

---

## 📌 Flag
