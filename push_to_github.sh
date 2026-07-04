#!/bin/bash
# ================================================================
# QA AI Tool — GitHub Push Script
# Run this script to create repo and push all files
# Usage: bash push_to_github.sh YOUR_GITHUB_TOKEN
# ================================================================

TOKEN=$1
USERNAME="vanichalla24"
REPO="qa-ai-tool"

if [ -z "$TOKEN" ]; then
  echo "❌ Please provide your GitHub token:"
  echo "   bash push_to_github.sh ghp_yourtoken..."
  echo ""
  echo "Get token → github.com → Settings → Developer settings"
  echo "            → Personal access tokens → Tokens (classic)"
  echo "            → Generate new token → check 'repo' scope"
  exit 1
fi

echo "🚀 Pushing QA AI Tool to GitHub..."
echo ""

# Step 1: Create repo
echo "Step 1/3 — Creating repository..."
CREATE=$(curl -s -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/user/repos" \
  -d "{
    \"name\": \"$REPO\",
    \"description\": \"🤖 Free AI-powered QA Automation Tool — Playwright, Appium, BDD, RCA, Jenkins using Google Gemini (FREE)\",
    \"homepage\": \"https://$USERNAME.github.io/$REPO\",
    \"private\": false,
    \"auto_init\": false,
    \"has_issues\": true
  }")

if echo "$CREATE" | grep -q '"full_name"'; then
  echo "✅ Repository created: github.com/$USERNAME/$REPO"
else
  if echo "$CREATE" | grep -q 'already exists'; then
    echo "⚠️  Repository already exists — will push files anyway"
  else
    echo "❌ Error creating repo:" 
    echo "$CREATE" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('message','Unknown error'))"
    exit 1
  fi
fi

# Step 2: Push files via git
echo ""
echo "Step 2/3 — Pushing files..."

# Set remote
cd "$(dirname "$0")"
git remote remove origin 2>/dev/null || true
git remote add origin "https://$TOKEN@github.com/$USERNAME/$REPO.git"
git branch -M main

# Push
if git push -u origin main --force; then
  echo "✅ All files pushed successfully!"
else
  echo "❌ Push failed. Check your token has 'repo' permission."
  exit 1
fi

# Step 3: Enable GitHub Pages
echo ""
echo "Step 3/3 — Enabling GitHub Pages..."
PAGES=$(curl -s -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/$USERNAME/$REPO/pages" \
  -d '{"source":{"branch":"main","path":"/"}}')

if echo "$PAGES" | grep -q '"url"'; then
  echo "✅ GitHub Pages enabled!"
else
  echo "⚠️  Enable Pages manually: Settings → Pages → Source → main → /"
fi

echo ""
echo "════════════════════════════════════════════"
echo "✅ DONE! Your QA AI Tool is live:"
echo ""
echo "   📁 Repo   : https://github.com/$USERNAME/$REPO"
echo "   🌐 Live   : https://$USERNAME.github.io/$REPO"
echo "   (Pages may take 2-3 minutes to go live)"
echo "════════════════════════════════════════════"
