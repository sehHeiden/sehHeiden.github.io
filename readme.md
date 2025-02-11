# README.md

## 📦 Hugo Blog Deployment with GitHub Pages

This guide explains how to **update**, **build**, and **publish** your Hugo blog to **GitHub Pages**.

---

## 🚀 Prerequisites

1. **Hugo Installed:**
   - Check with: `hugo version`
   - Install: [Hugo Installation Guide](https://gohugo.io/getting-started/installing/)

2. **Git Installed:**
   - Check with: `git --version`
   - Install: [Git Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

3. **GitHub Repository:**
   - A repository with GitHub Pages enabled (either `username.github.io` or a project repo).

4. **Remote Repository Set:**
   - Check with: `git remote -v`
   - If not set:
     ```bash
     git remote add origin https://github.com/username/repository.git
     ```

---

## 🔄 Update Your Site

1. **Pull the Latest Changes (Optional):**
   ```bash
   git pull origin main
   ```

2. **Make Changes:**
   - Add or edit content in `content/`
   - Update config in `config.toml`

3. **Check Changes Locally:**
   ```bash
   hugo server -D
   ```
   - Open `http://localhost:1313` in your browser.

---

## 🛠️ Build the Site

When you're ready to deploy:

1. **Clean and Build the Site:**
   ```bash
   hugo --minify
   ```
   - This generates the site in the `public/` folder.

2. **Verify Output:**
   ```bash
   hugo server --source public
   ```
   - Check `http://localhost:1313` to verify the built version.

---

## 🌐 Deploy to GitHub Pages

### Option 1: Deploy via `gh-pages` Branch (Recommended)

1. **Commit Your Changes:**
   ```bash
   git add .
   git commit -m "Update blog content"
   git push origin main
   ```

2. **Push `public/` Folder to `gh-pages`:**
   ```bash
   git subtree push --prefix public origin gh-pages
   ```

3. **Verify Deployment:**
   - Go to: `https://username.github.io/` or `https://username.github.io/repository/`

---

### Option 2: Deploy Directly (If Repo Is `username.github.io`)

1. **Commit and Push:**
   ```bash
   git add .
   git commit -m "Update blog"
   git push origin main
   ```

2. **GitHub Pages Settings:**
   - Go to **Settings → Pages**.
   - Set **Source** to `main` branch (or `gh-pages` if using that).

3. **Visit Your Site:**
   - `https://username.github.io/`

---

## 🧹 Clean Build (Optional)

If things don't work as expected:

1. **Clear `public/` Folder:**
   ```bash
   rm -rf public/
   hugo --minify
   ```

2. **Force Push:**
   ```bash
   git add .
   git commit -m "Clean build"
   git push origin main --force
   ```

---

## 📝 Troubleshooting

- **Page Not Updating?**
  - Clear browser cache.
  - Verify `gh-pages` branch is up-to-date.

- **Build Errors?**
  - Run `hugo` without `--minify` to see detailed errors.

- **404 Errors on Subpages?**
  - Make sure `baseURL` in `config.toml` is correct.

---

## 📚 Useful Commands

```bash
# Start local server
hugo server -D

# Build site
hugo --minify

# Deploy to gh-pages
git subtree push --prefix public origin gh-pages

# Clean public folder
rm -rf public/
```

Happy blogging! 🚀

