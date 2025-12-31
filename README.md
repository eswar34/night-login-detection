# Night-Time Suspicious Login Detection (SOC | Bash)

## 📌 Overview
This project simulates a **Security Operations Center (SOC)** detection use case that identifies
**successful SSH logins occurring outside normal business hours**.

Attackers often perform logins during late-night hours to reduce visibility.
This script helps detect such behavior by analyzing authentication logs.

The solution is implemented using **Bash scripting**, focusing on log parsing,
conditional logic, and time-based detection.

---

## 🔍 Detection Use Case
- Detects **successful SSH logins**
- Flags logins **outside business hours (08:00 – 18:00)**
- Identifies potential **unauthorized or suspicious access**
- Mimics **real SOC alert logic**

---

## 📂 Input File
**auth.log**

Example log format:
Jan 10 01:15:23 server sshd[1111]: Accepted password for root from 192.168.1.10
Jan 10 09:05:12 server sshd[1112]: Accepted password for admin from 192.168.1.20

yaml
Copy code

---

## ⚙️ Detection Logic
1. Extract successful login events from the authentication log
2. Parse the login time (hour)
3. Define business hours as **08:00 to 18:00**
4. Flag logins occurring outside business hours
5. Display suspicious login details

---

## ▶️ Usage

Make the script executable:
```bash
chmod +x night_login_detection.sh
Run the script:

bash
Copy code
./night_login_detection.sh
🧰 Tools Used
bash

grep

awk

cut

for / if statements

🛡️ SOC Relevance
This project demonstrates:

Time-based detection logic

SSH log analysis

Behavioral anomaly detection

Bash scripting for SOC automation

Entry-level detection engineering skills

🚨 Disclaimer
This project is for educational and defensive security purposes only.
All log data used is simulated and does not represent real systems.

yaml
Copy code

---

## 🧠 Mentor Verdict
With:
- Clean repo description  
- Professional README  
- Working detection script  

👉 This repository is **portfolio-ready** and **SOC interview safe**.

---

### Next (your choice):
1️⃣ Add **sample output section**  
2️⃣ Add **MITRE ATT&CK mapping**  
3️⃣ Combine detections into one repo  
4️⃣ Mock SOC interview questions  

Reply with **1 / 2 / 3 / 4**
