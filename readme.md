# Hugo Blog Configuration

Welcome to SeHe's Hugo blog. This project exemplifies modern, automated deployment with Hugo and GitHub Pages.

## 🚀 Quick Start

1. **Make Changes**: Edit content in `content/` or update configurations as needed.
2. **Test Locally**: Run `hugo server -D` to preview on `http://localhost:1313`.
3. **Commit Changes**: Use Git - `git add .`, `git commit -m "message"`, `git push`.
4. **Deploy**: Automatic via GitHub Actions or manually using provided scripts.

## 🛠 Features

- **Automated Deployment**: GitHub Actions pipeline for GitHub Pages.
- **Pre-commit Hook**: Cleans generated files and prevents accidental commits.
- **Build Scripts**: Simple PowerShell and Bash scripts for local builds.
- **Cross-platform**: Compatible with Windows, Linux, and macOS.

## 📂 Key Files and Directories

- **content/**: Your markdown content.
- **static/**: Static assets, images, etc.
- **layouts/**: Custom layouts and templates.
- **DEPLOYMENT.md**: Detailed guide on deploying your site.

## 🛠 Build & Deploy

### Build Locally
- **Windows**: Run `./build.ps1`.
- **Linux/macOS**: Run `./build.sh`.

### Deployment
For automatic deployment, ensure GitHub Pages is set to build from GitHub Actions:
1. Go to your repository settings on GitHub.
2. Navigate to **Pages** and set the source to **GitHub Actions**.
3. Simply push to `main` to deploy.

## 🛡️ Troubleshooting

- **CSS/JS Issues**: Check paths and ensure assets in `static/`.
- **Build Errors**: Use `hugo --verbose` to diagnose issues.
- **Deployment Errors**: Verify Pages configuration and logs in GitHub Actions.

## 🎉 Enjoy Blogging!
Your site is configured to deploy effortlessly. Focus on writing while the automation handles the details.

