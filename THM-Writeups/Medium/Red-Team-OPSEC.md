# 🔴 TryHackMe – Red Team OPSEC 🔴

## ✅ Difficulty
Medium – Theoretical + Practical (OPSEC principles for Red Team operations 🔴)

## 🧠 Objective 
Understand and apply the **five steps of the OPSEC process** to Red Team operations, identifying how to protect critical information and avoid detection by the Blue Team.

---

## 📝 **1. Introduction** 

**Operations Security (OPSEC)** is the process of denying adversaries (Blue Team or malicious third parties) the ability to gather critical information about Red Team capabilities, intentions, or ongoing operations.  
As Red Teamers, we may be authorized to test systems, but from the Blue Team's perspective, we are still adversaries trying to bypass their defenses.

### **The 5 Steps of OPSEC (NIST-based):**
1. **Identify Critical Information**  
2. **Analyse Threats**  
3. **Analyse Vulnerabilities**  
4. **Assess Risks**  
5. **Apply Countermeasures**

---

## 📝 **2. Critical Information** 

Critical information includes anything that, if obtained by the Blue Team, could hinder our operation:

- **Client data** (employee names, roles, infrastructure) – PoLP should apply strictly.  
- **Red Team details** (identities, activities, plans, TTPs).  
- **Tools & OS** (e.g., Pentoo, Kali, or specific C2 frameworks).  
- **Public IPs & domains** used for phishing or exploitation.  
- **Hosted websites** (e.g., phishing pages).

💡 *Example:* If the Blue Team links your Nmap scanning IP to the same IP hosting a phishing site, your operation is compromised.

---

## 📝 **3. Threat Analysis** 

Adversaries are any entities with the **intent + capability** to stop our operation:

| Adversary           | Intent                          | Capability               |
|----------------------|---------------------------------|--------------------------|
| **Blue Team**        | Keep intruders out              | Varies (SIEM, IDS, etc.) |
| **Malicious 3rd Party** | Exploit or sell gathered info  | Random (bots or targeted)|

➡️ **Threat = Adversary + Intent + Capability**

---

## 📝 **4. Vulnerability Analysis** 

An **OPSEC vulnerability** exists when adversaries can collect and correlate information that affects your mission.

**Examples:**
- Using the **same IP** for Nmap, Metasploit, and phishing (→ one detection blocks all).  
- **Unsecured databases** storing phished credentials (→ 3rd parties can exfiltrate data).  
- **Social media leaks** (e.g., team members tagging each other at dinner).  

✅ **Questions from the task:**
- **Using THC-Hydra & Metasploit on the same system?** → **Y** (Yes, OPSEC vuln)  
- **Posting a cat photo?** → **N**  
- **Tagging team on social media?** → **Y**  
- **Posting client list publicly?** → **Y**  
- **Posting morning coffee photo?** → **N**

---

## 📝 **5. Risk Assessment** 

Risk = Likelihood of detection × Impact on mission

**Examples:**
- **Same IP for multiple activities + SIEM detection** → High risk.  
- **Unsecured phishing database (bots scanning random IPs)** → High risk.  

---

## 📝 **6. Countermeasures** 

**Goal:** Prevent detection, deceive adversaries, or deny data collection.

✅ **Examples:**
- **Use different IPs** for scanning, exploitation, and phishing.  
- **Harden databases** used for phishing data.  
- **Camouflage OS/VMs** (rename “kali2021vm” to blend with the client’s naming convention).  
- **Modify tool signatures** (e.g., change Nmap’s `User-Agent` with `--script-args http.useragent="CUSTOM_AGENT"`).

---

## 🎯 **Key Takeaways** 

- OPSEC is not just rules; it’s a **continuous process**.  
- Apply the **5-step process** before, during, and after every engagement.  
- **Think like your adversary** (Blue Team): “What could they piece together if they monitored me?”

---

⭐ **Red Team OPSEC is about staying invisible — if they don’t know you’re there, you’re already winning.** ⭐
