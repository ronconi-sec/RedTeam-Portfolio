# 🔴 TryHackMe – Red Team OPSEC 🔴

## Difficulty
Medium – Theoretical + Practical (OPSEC principles for Red Team operations 🔥)

## Objective
Learn the **5 steps of OPSEC** and how to apply them to stay under the radar of the Blue Team.

---

## 1. Introduction

OPSEC is basically **making sure the Blue Team doesn’t know what you’re doing**.  
At first, I thought “it’s just common sense”, but LOL, there are so many subtle pitfalls.  

The 5 steps:
1. Identify critical information
2. Analyze threats
3. Analyze vulnerabilities
4. Assess risks
5. Apply countermeasures

---

## 2. Critical Information

Anything the Blue Team could use against you:

- Client data (roles, infrastructure, etc.)  
- Red Team details (identities, plans, TTPs)  
- IPs and domains  
- Tools used (Kali, C2 frameworks, etc.)

💡 *Pro tip:* never use the same IP for scanning and phishing… learned that the hard way 😅

---

## 3. Threat Analysis

| Adversary               | Intent                  | Capability |
|-------------------------|------------------------|-----------|
| Blue Team               | Detect us              | SIEM, IDS |
| Malicious third parties | Exploit our info       | Random bots or targeted attacks |

---

## 4. Vulnerability Analysis

- Using the same IP for Nmap, Metasploit, and phishing → risky AF  
- Unsecured databases → easy data leaks  
- Social media posts showing your VMs → LOL watch out 😬  

✅ *Lesson learned:* small mistakes can compromise the whole operation.

---

## 5. Risk Assessment

Risk = Likelihood × Impact  

- Same IP for multiple tasks + SIEM monitoring = high risk  
- Insecure phishing database → medium risk

---

## 6. Countermeasures

- Use separate IPs for each activity  
- Harden databases  
- Rename VMs to blend with the environment  
- Modify tool signatures (e.g., Nmap User-Agent)

---

## Conclusion

OPSEC is **a continuous process**, not just a set of rules.
Even small slips (like a photo or a misconfigured script) can ruin an operation.
