# GitHub Upload Instructions

## Method 1: Using GitHub Desktop (Recommended - Easiest)

1. **Download GitHub Desktop**: https://desktop.github.com/
2. **Install and Login** with your GitHub account
3. **Add Repository**:
   - Click "File" → "Add Local Repository"
   - Browse to this folder: `C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master`
   - Click "Add repository"
4. **Publish to GitHub**:
   - Click "Publish repository" button
   - Choose repository name (e.g., "lawfirm-website")
   - Make it Public (for free GitHub Pages)
   - Click "Publish repository"
5. **Enable GitHub Pages**:
   - Go to your repository on GitHub.com
   - Click "Settings" → "Pages"
   - Under "Source", select "Deploy from a branch"
   - Choose "main" branch and "/ (root)" folder
   - Click "Save"
6. **Your website will be live at**:
   - `https://YOUR_USERNAME.github.io/REPOSITORY_NAME/`

## Method 2: Using Command Line (Git Required)

### Step 1: Install Git
- Download from: https://git-scm.com/download/win
- Install with default settings

### Step 2: Initialize Repository
```bash
cd "C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master"
git init
git add .
git commit -m "Initial commit - Law firm website"
```

### Step 3: Create Repository on GitHub
1. Go to https://github.com/new
2. Create a new repository (e.g., "lawfirm-website")
3. Make it Public
4. **Don't** initialize with README

### Step 4: Push to GitHub
```bash
git remote add origin https://github.com/YOUR_USERNAME/REPOSITORY_NAME.git
git branch -M main
git push -u origin main
```

### Step 5: Enable GitHub Pages
1. Go to repository Settings → Pages
2. Source: Deploy from branch
3. Branch: main, folder: / (root)
4. Save

### Your website URL:
`https://YOUR_USERNAME.github.io/REPOSITORY_NAME/`

## Quick Upload via GitHub Website (Alternative)

1. Go to https://github.com/new
2. Create repository (make it Public)
3. Upload files directly via "uploading an existing file"
4. Enable GitHub Pages in Settings

---

**Note**: After publishing, your website will be available at the GitHub Pages URL within 1-2 minutes.
