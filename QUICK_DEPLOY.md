# 🚀 Quick Deploy to GitHub - 3 Simple Steps

## Step 1: Authenticate GitHub CLI
Run this command in PowerShell:
```powershell
$env:Path += ";C:\Program Files\GitHub CLI"; gh auth login
```
- Select: **GitHub.com**
- Select: **HTTPS**
- Select: **Login with a web browser**
- Press Enter, it will open browser
- Click **Authorize** in browser
- Come back to terminal and press Enter

## Step 2: Run Deployment Script
After authentication, run:
```powershell
cd "C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master"
.\deploy-to-github.ps1
```

## Step 3: Done! 🎉
Your website will be live at:
```
https://YOUR_USERNAME.github.io/lawfirm-website/
```

---

## Alternative: Manual Method (No Authentication Needed)

If you prefer to do it manually:

1. **Create Repository**: https://github.com/new
   - Name: `lawfirm-website`
   - Public
   - Don't initialize with README

2. **Push Code** (run these commands):
```powershell
$env:Path += ";C:\Program Files\Git\cmd"
cd "C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master"
git remote add origin https://github.com/YOUR_USERNAME/lawfirm-website.git
git branch -M main
git push -u origin main
```
(Replace YOUR_USERNAME with your GitHub username)

3. **Enable GitHub Pages**:
   - Go to repository → Settings → Pages
   - Source: `main` branch, `/ (root)` folder
   - Save

---

**Your website will be live in 1-2 minutes!** 🎊
