# 🔧 Setup Guide

## Get Free Gemini API Key

| Step | Action |
|------|--------|
| 1 | Open → [aistudio.google.com/app/apikey](https://aistudio.google.com/app/apikey) |
| 2 | Sign in with your Gmail account (free) |
| 3 | Click **"Create API Key"** |
| 4 | Select **"Create API key in new project"** |
| 5 | Copy the key — starts with `AIzaSy...` |
| 6 | In the tool → **API Setup** → paste → **Test & Save** |

## Free Tier Limits

| Limit | Value |
|-------|-------|
| Requests per minute | 60 |
| Requests per day | 1,500 |
| Cost | **$0** |

## Running the Tool

```bash
# Option 1 — Just double-click index.html

# Option 2 — Local server
npx serve .
# Open: http://localhost:3000

# Option 3 — Python
python3 -m http.server 8080
# Open: http://localhost:8080
```

## Troubleshooting

| Error | Fix |
|-------|-----|
| `API_KEY_INVALID` | Generate a new key at aistudio.google.com |
| `QUOTA_EXCEEDED` | Wait 60 seconds — free tier is 60 req/min |
| Tool not loading | Check internet connection |
| Features not working | Re-enter key in API Setup and click Test & Save |

## Security

- Key stored only in browser `localStorage`
- Never sent anywhere except `generativelanguage.googleapis.com`
- Remove anytime from API Setup page
