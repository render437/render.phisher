# Contributing to render.phisher

Thank you for your interest in contributing!  
This project welcomes improvements, bug fixes, documentation updates, and feature ideas — as long as they follow ethical and legal guidelines.

---

## 🧾 Code of Conduct
By participating in this project, you agree to maintain a respectful, helpful, and inclusive environment.  
Harassment, discrimination, or abusive behavior will not be tolerated.

---

## 🔐 Responsible Usage
`render.phisher` exists **only for educational, research, and authorized security testing purposes**.  
Do **NOT** submit contributions that support or encourage illegal, unethical, or unauthorized use.

---

## 🛠️ How to Contribute

### 1. Fork the Repository
Click **Fork** on the repository page to create your own working copy.

### 2. Create a New Branch
Use clear naming such as:
feature/new-module
fix/update-script
docs/improve-readme


### 3. Make Your Changes
Please follow these rules:
- Keep code consistent with existing style.
- Comment complex or security-sensitive logic.
- Do not commit credentials, tokens, or private data.
- Ensure scripts remain functional in Linux shell environments.

### 4. Test Your Changes
Before opening a pull request:
- Verify the tool installs and runs correctly.
- Ensure new features work as intended.
- Confirm existing features are not broken.
- Test paths, modules, and dependencies thoroughly.

### 5. Open a Pull Request
Include the following:
- **What** you changed  
- **Why** the change is needed  
- Testing steps or reproduction steps  
- Link to issues (e.g., `Closes #7`)

---

## 📁 Project Structure
General layout for contributors:

render.phisher/
├── Dockerfile
├── legal
│   ├── CODE_OF_CONDUCT.md
│   ├── COPYRIGHT.md
│   ├── DISCLAIMER.md
│   ├── RULESET.json
│   └── SECURITY.md
├── LICENSE
├── make-deb.sh
├── ngrok-setup.md
├── README.md
├── render.phisher.sh
├── run-docker.sh
└── scripts
    └── launch.sh


---

## 📝 Coding Standards

### Bash Guidelines
- Quote variables (`"$var"`)
- Prefer POSIX-compatible syntax
- Use `set -e` if appropriate
- Keep scripts modular and readable

### Python Guidelines (if used)
- Use clear function and variable names
- Avoid unnecessary dependencies
- Organize imports logically

### Commit Message Format
feat: add new module support
fix: correct update path error
docs: update installation section
refactor: simplify menu logic

---

## 🐞 Reporting Issues
If you find a bug:
- Check if it’s already reported
- Include:
  - Steps to reproduce  
  - Expected vs. actual behavior  
  - Environment/OS  
  - Logs or screenshots if helpful  

---

## 💡 Feature Requests
Feature ideas are welcome!  
Before submitting:
- Ensure the idea aligns with educational/ethical guidelines
- Explain the purpose and benefit to users

---

## 🙌 Thanks for Contributing!
Your help improves the project and supports safer cybersecurity education.  
If you have questions, open an issue and we’ll discuss them.
