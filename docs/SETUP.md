# 🔧 Setup Guide — QA AI Tool

## Prerequisites

- Any modern browser (Chrome, Edge, Firefox)
- Gmail account (for free Gemini API key)
- No Node.js, no npm, no installation required

---

## Getting Your Free Gemini API Key

### Step 1 — Go to Google AI Studio
Open: https://aistudio.google.com/app/apikey

### Step 2 — Sign In
Sign in with your Gmail/Google account (completely free).

### Step 3 — Create API Key
Click the blue **"Create API Key"** button.
Select **"Create API key in new project"**.

### Step 4 — Copy the Key
Your key will look like: `AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXX`
Copy it immediately (you won't see it again).

### Step 5 — Enter in Tool
Open `index.html` → Click **"API Setup"** → Paste key → Click **"Test & Save"**.

---

## Free Tier Limits

| Limit | Value |
|-------|-------|
| Requests per minute | 60 |
| Requests per day | 1,500 |
| Tokens per minute | 1,000,000 |
| Cost | $0 |

These limits are more than enough for daily QA work.

---

## Running Locally

### Option A — Double Click (Simplest)
Just double-click `index.html`. Works on Windows, Mac, Linux.

### Option B — Local Server (Recommended)
```bash
# Using npx serve
npx serve .

# Using Python
python3 -m http.server 8080

# Using Node.js
node -e "require('http').createServer((q,r)=>{require('fs').readFile('./index.html',(e,d)=>{r.end(d)})}).listen(8080)"
```

### Option C — VS Code Live Server
Install the Live Server extension → Right-click `index.html` → Open with Live Server.

---

## Security Notes

- Your API key is stored ONLY in `localStorage` of your browser
- It is never sent to any server other than `generativelanguage.googleapis.com`
- You can remove it anytime from the API Setup page
- Never share your API key in screenshots or public repos

---

## Troubleshooting

### "API_KEY_INVALID" error
→ Your key is wrong or expired. Go to aistudio.google.com and create a new key.

### "QUOTA_EXCEEDED" error
→ You have hit the 60 requests/minute limit. Wait 60 seconds and retry.

### Tool not loading
→ Make sure you have internet connection (needed for Gemini API calls and icon fonts).

### Features not generating
→ Check you clicked "Test & Save" in API Setup and saw the green tick.
