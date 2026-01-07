# GitHub Deployment Script
# This script will create repository and push to GitHub

Write-Host "🚀 Starting GitHub Deployment..." -ForegroundColor Green

# Add Git and GitHub CLI to PATH
$env:Path += ";C:\Program Files\Git\cmd;C:\Program Files\GitHub CLI"

# Navigate to project directory
$projectPath = "C:\Users\furqa\Desktop\New folder (8)\lawfirm-master\lawfirm-master"
Set-Location $projectPath

Write-Host "📁 Current directory: $projectPath" -ForegroundColor Cyan

# Check if GitHub CLI is authenticated
Write-Host "`n🔐 Checking GitHub authentication..." -ForegroundColor Yellow
$authCheck = gh auth status 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "`n⚠️  GitHub CLI is not authenticated!" -ForegroundColor Red
    Write-Host "Please run: gh auth login" -ForegroundColor Yellow
    Write-Host "Then run this script again." -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ GitHub CLI is authenticated!" -ForegroundColor Green

# Get repository name
$repoName = "lawfirm-website"
Write-Host "`n📦 Repository name: $repoName" -ForegroundColor Cyan

# Create repository on GitHub
Write-Host "`n🌐 Creating repository on GitHub..." -ForegroundColor Yellow
gh repo create $repoName --public --source=. --remote=origin --push

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Repository created and code pushed!" -ForegroundColor Green
    
    # Enable GitHub Pages
    Write-Host "`n📄 Enabling GitHub Pages..." -ForegroundColor Yellow
    gh api repos/$(gh api user --jq .login)/$repoName/pages -X POST -f source@'{"branch":"main","path":"/"}'
    
    Write-Host "`n🎉 SUCCESS! Your website is being deployed!" -ForegroundColor Green
    Write-Host "`nYour website will be live at:" -ForegroundColor Cyan
    $username = gh api user --jq .login
    Write-Host "https://$username.github.io/$repoName/" -ForegroundColor Yellow
    Write-Host "`n(It may take 1-2 minutes to go live)" -ForegroundColor Gray
} else {
    Write-Host "`n❌ Error creating repository. Please check:" -ForegroundColor Red
    Write-Host "1. Repository name might already exist" -ForegroundColor Yellow
    Write-Host "2. You might need to authenticate: gh auth login" -ForegroundColor Yellow
}
