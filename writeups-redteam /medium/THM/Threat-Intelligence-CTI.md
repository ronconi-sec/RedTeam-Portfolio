# 🔴 TryHackMe – Threat Intelligence (CTI) 🔴

> *“If you want to beat your adversary, you first need to think like them.”*  

## Difficulty
🟠 Medium – Theory & Practical (Red Team OPSEC 🔴 + Threat Intel)

## Objective
Learn how to **consume & leverage Cyber Threat Intelligence (CTI)** to emulate **real-world adversaries** during Red Team ops.  
LOL at first I thought CTI was only for Blue Teams… turns out Red Teams can use it to plan smarter attacks 😂

---

## 1. What is CTI?

**Cyber Threat Intelligence (CTI)** isn’t just defense stuff. As a Red Teamer, it helps you:

✅ **Plan realistic attacks** based on how adversaries behave  
✅ **Avoid detection** by copying known TTPs  
✅ **Train Blue Teams** in handling real-world threats

💡 *Pro tip:* Always check multiple intel sources—one outdated report can make your attack look amateur.

---

## 2. Key Frameworks

| Framework                     | Purpose                                                                 |
|-------------------------------|-------------------------------------------------------------------------|
| **MITRE ATT&CK**              | Maps **Tactics, Techniques, Procedures (TTPs)** of known threat groups |
| **TIBER-EU**                   | EU framework for TI-driven testing of critical infrastructures        |
| **Lockheed Martin Kill Chain** | Classic 7-step attack lifecycle → used for APT emulation               |

*Personal note:* I always combine MITRE + Kill Chain when mapping an attack; feels like connecting the dots in a spy movie 🕵️‍♂️

---

## 3. Adversary TTP Mapping (APT41)

Using **MITRE ATT&CK** + **Kill Chain**, here’s a typical APT41 attack flow:

| Phase                          | TTP / Technique                                  |
|--------------------------------|-------------------------------------------------|
| 🛰️ Reconnaissance               | OSINT → public websites, subdomain enumeration |
| ⚔️ Weaponization                 | Malicious VBA & PowerShell scripts             |
| ✉️ Delivery                      | Spearphishing (Office docs)                    |
| 💥 Exploitation                  | Registry modification, Scheduled Tasks         |
| 📥 Installation                  | Ingress tool transfer → Web shells (China Chopper) |
| 🌐 Command & Control (C2)       | HTTP/HTTPS, DNS tunneling, malleable profiles  |
| 📤 Actions on Objectives         | Data exfiltration over existing C2 channels    |

*Tip:* At first I mixed up Delivery & Exploitation—don’t worry, mapping them gets easier with practice.

---

## 4. Tools & Techniques

| Category                 | Example                          |
|---------------------------|---------------------------------|
| Web Shell                 | `China Chopper`                 |
| LOLBAS File Transfer      | `Certutil`                       |
| RATs                      | `Momo RAT` (SMS mining & monitoring) |

💡 *My note:* I tried Certutil once for file transfer in a lab—worked smoothly, but got me thinking “Blue Team would definitely see this in prod”

---

## 5. Behavioral CTI in Action

- ✅ **C2 Traffic Evasion** → Customize User-Agent, Host headers, and URIs  
- ✅ **Tool Customization** → Malware mimics known APT droppers (syscall & API imitation)  

Tip: always test your scripts in a controlled lab first, or you’ll have surprises you didn’t expect… trust me 

---

## 6. Key Takeaways

💡 *“CTI isn’t just rules on paper — it’s the art of thinking like your adversary.”*

- CTI makes **Red Team ops realistic**  
- **TTP Mapping** → better Blue Team training  
- **Adversary Emulation** → higher OPSEC, lower detection  

😂 *Personal reflection:* I didn’t think intel could be this fun. Mapping an APT felt like planning a heist in a movie.

---

## Flag / Final Task

✔ Captured successfully → Correct ATT&CK Navigator Layer + Kill Chain Mapping

---

### References
- [MITRE ATT&CK](https://attack.mitre.org/)  
- [TIBER-EU Whitepaper](https://www.ecb.europa.eu/pub/pdf/other/ecb.tiber_eu_framework.en.pdf)

