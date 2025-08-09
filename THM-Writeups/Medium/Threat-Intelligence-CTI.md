# 🔴 TryHackMe – Threat Intelligence (CTI)

> *“If you want to beat your adversary, you first need to think like them.”*

---

## ✅ Difficulty
🟠 **Medium** – Theory & Practical (Red Team OPSEC 🔴 & Threat Intel)

---

## 🧠 **Objective** 
Learn how to **consume & leverage Cyber Threat Intelligence (CTI)** to emulate **real-world adversaries** during Red Team engagements.

---

## 📝 **1. What is CTI?** 

**Cyber Threat Intelligence (CTI)** is not just for defense – **Red Teams use it to:**

✅ **Plan realistic attacks** based on adversary behavior  
✅ **Bypass detections** by copying known TTPs  
✅ **Train Blue Teams** to respond to real-world threats

---

## 🗂️ **2. Key Frameworks** 

| Framework         | Purpose                                                                 |
|--------------------|-------------------------------------------------------------------------|
| **MITRE ATT&CK**   | Maps **Tactics, Techniques, Procedures** (TTPs) to known threat groups. |
| **TIBER-EU**       | EU framework → TI-driven testing for critical infrastructures.          |
| **Lockheed Martin Kill Chain** | Classic 7-step attack lifecycle → adapted for APTs.        |

---

## 🕵️ **3. Adversary TTP Mapping (APT41)** 

Using **MITRE ATT&CK** + **Kill Chain**:

| **Phase**             | **TTP / Technique**                                 |
|------------------------|------------------------------------------------------|
| 🛰️ **Reconnaissance**  | OSINT → Public websites, subdomain enumeration      |
| ⚔️ **Weaponization**    | Malicious VBA & PowerShell scripts                  |
| ✉️ **Delivery**         | Spearphishing (Office documents)                    |
| 💥 **Exploitation**     | Registry Modification, Scheduled Tasks              |
| 📥 **Installation**     | Ingress Tool Transfer → Web Shells (China Chopper)  |
| 🌐 **C2**               | HTTP/HTTPS, DNS tunneling, malleable profiles        |
| 📤 **Actions on Objectives** | Exfiltration over existing C2 channels        |

---

## 🧩 **4. Tools & Techniques** 

| **Category**         | **Example**                                          |
|-----------------------|-------------------------------------------------------|
| **Web Shell**        | `China Chopper`                                      |
| **LOLBAS File Transfer** | `Certutil`                                         |
| **RATs**             | `Momo RAT` (SMS mining & monitoring)                  |

---

## 🖥️ **5. Behavioral CTI in Action** 

✅ **C2 Traffic Evasion** → Custom **User-Agent**, Host headers, URIs  
✅ **Tool Customization** → Malware mimics **known APT droppers** (syscall & API imitation)

---

## 🎯 **6. Key Takeaways** 

💡 *“CTI isn’t just rules on paper — it’s the art of thinking like your adversary.”*  

- CTI makes **Red Team operations realistic**.  
- **TTP Mapping** = Better Blue Team training.  
- **Adversary Emulation** = Higher OPSEC, lower detection.

---

## ✅ **Flag (Final Task)** 

✔ **Captured successfully** → Correct ATT&CK Navigator Layer + Kill Chain Mapping.

---

### 🔗 **References**
- [MITRE ATT&CK](https://attack.mitre.org/)  
- [TIBER-EU Whitepaper](https://www.ecb.europa.eu/pub/pdf/other/ecb.tiber_eu_framework.en.pdf)

---
