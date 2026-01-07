# GitHub Push Steps - Final Steps

## ✅ Repository Ready!
Your local Git repository is initialized and all files are committed.

## Next Steps to Publish on GitHub:

### Step 1: Create Repository on GitHub
1. Go to: https://github.com/new
2. Repository name: `lawfirm-website` (or any name you like)
3. Make it **Public** (required for free GitHub Pages)
4. **DO NOT** check "Initialize with README"
5. Click **"Create repository"**

### Step 2: Push Your Code
After creating the repository, GitHub will show you commands. Use these commands in your terminal:

```bash
# Add Git to PATH (if not already done)
$env:Path += ";C:\Program Files\Git\cmd"

# Navigate to your project folder
cd "C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master"

# Add remote repository (replace YOUR_USERNAME and REPOSITORY_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPOSITORY_NAME.git

# Rename branch to main
git branch -M main

# Push to GitHub
git push -u origin main
```

**Note**: When you run `git push`, GitHub will ask for your username and password. 
- Username: Your GitHub username
- Password: Use a **Personal Access Token** (not your GitHub password)
  - Get token from: https://github.com/settings/tokens
  - Click "Generate new token (classic)"
  - Select scope: `repo`
  - Copy the token and use it as password

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **"Settings"** tab
3. Click **"Pages"** in left sidebar
4. Under **"Source"**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **"Save"**

### Step 4: Your Website is Live! 🎉
Your website will be available at:
```
https://YOUR_USERNAME.github.io/REPOSITORY_NAME/
```

It may take 1-2 minutes to go live.

---

## Quick Alternative: Use GitHub Desktop
If you prefer a GUI:
1. Download: https://desktop.github.com/
2. Install and login
3. File → Add Local Repository
4. Select your project folder
5. Click "Publish repository"
6. Enable GitHub Pages in Settings
