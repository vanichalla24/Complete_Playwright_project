# 🤖 QA AI Tool — Free AI-Powered QA Automation Assistant

[![Gemini Free](https://img.shields.io/badge/AI-Google%20Gemini%20Free-green?style=flat-square&logo=google)](https://aistudio.google.com)
[![No Install](https://img.shields.io/badge/Setup-No%20Install%20Required-blue?style=flat-square)](https://github.com/vanichalla24/qa-ai-tool)
[![HTML](https://img.shields.io/badge/Built%20With-HTML%20%2B%20JS-orange?style=flat-square)](https://github.com/vanichalla24/qa-ai-tool)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)

> An intelligent QA engineering assistant that generates Playwright tests, Appium scripts, BDD scenarios, RCA documents, Jenkins pipelines and more — completely **free** using Google Gemini AI.

---

## ✨ Features — 14 AI-Powered Tools

| # | Feature | What It Does |
|---|---------|-------------|
| 1 | **Generate Test Cases** | From JIRA/requirement → complete Playwright/Appium TypeScript spec |
| 2 | **Generate Page Object** | Page name → full 3-layer POM class (locators only, strict rule) |
| 3 | **XPath / Locator Generator** | Element description → 5 selector strategies ranked by stability |
| 4 | **API Test Generation** | Endpoint → positive, negative, auth failure, schema validation tests |
| 5 | **Test Data Generator** | Schema → 20+ records in TypeScript array + JSON + CSV |
| 6 | **Analyze Test Failure** | Paste error log → root cause + confidence % + exact fix |
| 7 | **RCA Document** | Incident description → professional Root Cause Analysis document |
| 8 | **Self-Healing Locator** | Broken selector → 5 stable alternatives + helper function |
| 9 | **BDD / Gherkin** | Feature name → complete .feature file + TypeScript step definitions |
| 10 | **Jenkins Pipeline** | Stack + environments → full Jenkinsfile with Allure + Slack |
| 11 | **Framework Optimizer** | Your code → structural improvements + maintainability score |
| 12 | **Script Reviewer** | Paste test → score 1-10 per category + fully corrected version |
| 13 | **SQL Query Generator** | Requirement → SELECT, INSERT, DELETE, JOIN test queries |
| 14 | **Interview Answer** | Question → Director-level power answer with your experience |

---

## 🚀 Quick Start — 3 Steps

### Step 1 — Get Free Gemini API Key (2 minutes)

```
1. Open → https://aistudio.google.com/app/apikey
2. Sign in with your Gmail account (free)
3. Click "Create API Key"
4. Copy the key (starts with AIzaSy...)
```

> ✅ No credit card. No billing. 60 requests/minute free tier.

### Step 2 — Open the Tool

```bash
# Option A — Direct open (simplest)
# Just double-click index.html in your file explorer

# Option B — Local server (recommended for best experience)
npx serve .
# Then open: http://localhost:3000
```

### Step 3 — Connect Your Key

```
1. Click "API Setup" in the left sidebar
2. Paste your AIzaSy... key
3. Click "Test & Save"
4. ✅ Green tick = all 14 features active!
```

---

## 📁 Project Structure

```
qa-ai-tool/
│
├── index.html              ← Main application (single file, no build needed)
│
├── docs/
│   ├── SETUP.md            ← Detailed setup guide
│   ├── FEATURES.md         ← Feature descriptions and prompts
│   └── USAGE.md            ← How to use each feature
│
├── screenshots/            ← App screenshots for documentation
│
├── .github/
│   └── workflows/
│       └── deploy.yml      ← GitHub Pages auto-deploy workflow
│
├── .gitignore
├── LICENSE
├── CONTRIBUTING.md
└── README.md
```

---

## 🎯 How to Use for Playwright Projects

### Generate a Test Case
1. Click **"Generate test cases"** in sidebar
2. Paste your requirement: `"User should login with valid credentials and see dashboard"`
3. Select framework: `Playwright + TypeScript`
4. Click **Generate with Gemini**
5. Copy output → paste to `src/tests/login.spec.ts`
6. Run: `npx playwright test`

### Generate a Page Object
1. Click **"Generate page object"**
2. Enter page name: `Login Page`
3. Enter elements: `username input, password input, login button, error message`
4. Click **Generate**
5. Copy output → paste to `src/pages/LoginPage.ts`

### Analyze a Failing Test
1. Click **"Analyze test failure"**
2. Paste your error log or stack trace
3. Click **Generate**
4. Get: root cause + confidence % + exact fix code

---

## 🏗️ 3-Layer Architecture (Enforced in All Generated Code)

All generated code follows the strict 3-layer POM rule:

```
┌─────────────────────────────────────────────────┐
│  LAYER 3 — TESTS (spec files)                   │
│  ✅ describe/it blocks + assertions only        │
│  ❌ Never imports Page classes directly         │
└────────────────────┬────────────────────────────┘
                     │ uses
┌────────────────────▼────────────────────────────┐
│  LAYER 2 — MODULES (business logic)             │
│  ✅ Actions: click, fill, navigate              │
│  ❌ Never defines locators                      │
└────────────────────┬────────────────────────────┘
                     │ uses
┌────────────────────▼────────────────────────────┐
│  LAYER 1 — PAGES (locators only)                │
│  ✅ Only getter properties returning locators   │
│  ❌ No actions, no assertions, no await         │
└─────────────────────────────────────────────────┘
```

---

## 🤖 AI Provider

| Provider | Cost | Model | Requests |
|----------|------|-------|----------|
| **Google Gemini** (default) | **FREE** | gemini-1.5-flash-latest | 60/min |

Your API key is stored **only in your browser's localStorage** — never sent anywhere except Google's official API endpoint.

---

## 🖥️ Supported Frameworks

The tool generates code for:

- **Playwright + TypeScript** — Web E2E automation
- **Appium + WebDriverIO + TypeScript** — Android/iOS mobile automation
- **Selenium + Java + TestNG** — Legacy web automation
- **API Testing** — REST endpoint validation
- **BDD / Cucumber** — Behavior-driven development
- **Jenkins / GitHub Actions** — CI/CD pipelines

---

## 📸 Screenshots

| Dashboard | Generate | AI Chat |
|-----------|----------|---------|
| 14 feature cards | Code generation | QA Q&A |

---

## 🔧 Local Development

```bash
# Clone the repo
git clone https://github.com/vanichalla24/qa-ai-tool.git
cd qa-ai-tool

# Open directly (no build needed)
open index.html

# Or serve with npx
npx serve .

# Or use Python
python3 -m http.server 8080
```

---

## 🌐 Deploy to GitHub Pages

The repo includes a GitHub Actions workflow that auto-deploys to GitHub Pages on every push to `main`.

**Manual deploy:**
```
Repository Settings → Pages → Source → Deploy from branch → main → / (root)
```

**Your tool will be live at:**
```
https://vanichalla24.github.io/qa-ai-tool
```

---

## 📖 Interview Features

The **Interview Answer Generator** is tailored for QA Architect/Director level interviews. It generates power answers using:

- Your specific Samsung SRIB experience
- 13 consecutive Galaxy flagship releases
- Zero S1 defect escapes track record
- Dual Best Awards (Galaxy S25 + S26)
- 12-member team leadership
- AI-powered QA tooling expertise

---

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

Ideas for new features:
- [ ] Cypress test generator
- [ ] Visual regression test generator
- [ ] Performance test script generator
- [ ] Docker compose generator for test infrastructure
- [ ] Allure report analyzer

---

## 📄 License

MIT License — see [LICENSE](LICENSE)

---

## 👩‍💻 Author

**Vaani Challa**
- QA Architect & Technical Manager — Samsung R&D Institute India (SRIB)
- 17+ years in QA automation — Android, iOS, Web
- Galaxy S22 → S26 camera quality lead — zero S1 escapes across 13 releases
- Dual Samsung Best Award winner (Galaxy S25 + S26)
- GitHub: [@vanichalla24](https://github.com/vanichalla24)

---

## ⭐ If this tool helps you, please star the repo!

```
https://github.com/vanichalla24/qa-ai-tool
```
