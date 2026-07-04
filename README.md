<div align="center">

<img src="https://img.shields.io/badge/AI%20Powered-Google%20Gemini-4285F4?style=for-the-badge&logo=google&logoColor=white"/>
<img src="https://img.shields.io/badge/Cost-100%25%20FREE-10b981?style=for-the-badge"/>
<img src="https://img.shields.io/badge/No%20Install-Open%20%26%20Use-f59e0b?style=for-the-badge"/>
<img src="https://img.shields.io/badge/License-MIT-8b5cf6?style=for-the-badge"/>

# 🤖 QA AI Tool

### Free AI-Powered QA Automation Assistant

**Generate Playwright tests · Appium scripts · BDD · RCA · Jenkins pipelines**
**— all powered by Google Gemini, completely free**

[🌐 Live Demo](https://vanichalla24.github.io/Complete_Playwright_project) · [📖 Setup Guide](docs/SETUP.md) · [📋 All Features](docs/USAGE.md)

</div>

---

## 📌 What Is This?

A single HTML file that acts as your personal AI co-pilot for QA automation.
Open it in any browser, connect a free Google Gemini API key, and get instant AI-generated:

- ✅ Complete Playwright & Appium TypeScript test files
- ✅ Page Object classes following strict 3-layer architecture
- ✅ Root cause analysis from error logs
- ✅ Professional RCA documents
- ✅ BDD Gherkin feature files + step definitions
- ✅ Jenkins CI/CD pipeline scripts
- ✅ Director-level interview answers

**No installation. No Node.js. No build step. Just open and use.**

---

## ⚡ Quick Start

### Step 1 — Get Free API Key (2 minutes)
```
1. Open → https://aistudio.google.com/app/apikey
2. Sign in with Gmail
3. Click "Create API Key"
4. Copy the key (starts with AIzaSy...)
```

### Step 2 — Open the Tool
```bash
# Just double-click index.html
# OR serve locally:
npx serve .
```

### Step 3 — Connect & Use
```
Sidebar → API Setup → Paste key → Test & Save → ✅ All 14 features active
```

---

## 🧰 14 Features

| # | Feature | Input → Output |
|---|---------|----------------|
| 1 | **Test Case Generator** | Requirement → Full Playwright/Appium spec file |
| 2 | **Page Object Generator** | Page name → 3-layer POM TypeScript class |
| 3 | **XPath / Locator Generator** | Element → 5 strategies ranked by stability |
| 4 | **API Test Generator** | Endpoint → 5 tests (success, error, auth, schema) |
| 5 | **Test Data Generator** | Schema → TypeScript array + JSON + CSV |
| 6 | **Failure Analyzer** | Error log → Root cause + fix code |
| 7 | **RCA Document** | Incident → Professional Director-level RCA |
| 8 | **Self-Healing Locator** | Broken selector → 5 stable alternatives |
| 9 | **BDD / Gherkin** | Feature → .feature file + step definitions |
| 10 | **Jenkins Pipeline** | Stack → Full Jenkinsfile + Allure + Slack |
| 11 | **Framework Optimizer** | Your code → Improvements + score /10 |
| 12 | **Script Reviewer** | Paste test → Score per category + fixed version |
| 13 | **SQL Query Generator** | Requirement → SELECT + INSERT + DELETE + JOIN |
| 14 | **Interview Answer** | Question → Director-level power answer |

---

## 🏗️ 3-Layer Architecture (Enforced in All Output)

Every generated test follows the strict 3-layer POM rule:

```
LAYER 3 — TESTS       → describe/it + assertions only
              ↓ uses
LAYER 2 — MODULES     → click, fill, navigate (no locators)
              ↓ uses
LAYER 1 — PAGES       → locator getters only (no actions, no await)
```

---

## 📁 Project Structure

```
Complete_Playwright_project/
│
├── index.html              ← Full application (single file, 43KB)
│
├── docs/
│   ├── SETUP.md            ← API key setup + troubleshooting
│   └── USAGE.md            ← How to use all 14 features
│
├── screenshots/            ← App screenshots
│
├── README.md               ← This file
├── CONTRIBUTING.md         ← How to contribute
├── LICENSE                 ← MIT
└── .gitignore
```

---

## 🛠️ Supported Frameworks

| Framework | Use Case |
|-----------|----------|
| Playwright + TypeScript | Web E2E automation |
| Appium + WebDriverIO + TypeScript | Android & iOS mobile |
| Selenium + Java + TestNG | Legacy web automation |
| BDD / Cucumber | Behavior-driven development |
| Jenkins / GitHub Actions | CI/CD pipelines |

---

## 🔒 Privacy & Security

- Your Gemini API key is stored **only in your browser's localStorage**
- No server, no backend — all API calls go directly to `generativelanguage.googleapis.com`
- Nothing is stored or logged anywhere
- Remove your key anytime from the **API Setup** page

---

## 👩‍💻 Author

**Vaani Challa** — QA Architect & Technical Manager

| | |
|---|---|
| 🏢 Company | Samsung R&D Institute India (SRIB), Bangalore |
| ⏱️ Experience | 17+ years in QA Automation |
| 📱 Domain | Android · iOS · Camera · Galaxy Flagship Programs |
| 🏆 Awards | Dual Best Award — Galaxy S25 & S26 Camera Quality |
| 🚀 Track record | 13 consecutive flagship releases · Zero S1 defect escapes |
| 🔧 Stack | Playwright · Appium · LangGraph · Python · TypeScript |
| 🐙 GitHub | [@vanichalla24](https://github.com/vanichalla24) |

---

## 🤝 Contributing

Found a bug or have a feature idea? See [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📄 License

MIT © [Vaani Challa](https://github.com/vanichalla24)

---

<div align="center">

**If this tool saves you time, please ⭐ star the repo!**

`github.com/vanichalla24/Complete_Playwright_project`

</div>
