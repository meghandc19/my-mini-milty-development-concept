# GitHub Upload Instructions

Suggested repository name: `my-mini-milty-development-concept`

Suggested description: `Early-development concept for an original 2D arcade shooter built with Godot 4.7.1. Includes a movement/combat prototype and design documentation; multiplayer and most planned content are not implemented yet.`

## Repository settings

- Visibility: **Public** (only after reviewing this package and README).
- Do not initialize GitHub's README, `.gitignore`, or license when creating the empty repository; this folder already includes its own README and ignore file.
- No license is included. Choose one only when you decide what others may do with the code.
- Keep the previous private repository private as an archive. This package intentionally has no `.git` folder/history, so it will not carry old commit author emails into the new repository.

## Push using Git Bash

After extracting this ZIP and creating the empty public repository on GitHub, open Git Bash in the extracted `my-mini-milty-development-concept` folder and run these commands, replacing `YOUR_GITHUB_USERNAME` with your username.

```bash
git init -b main
git config user.name "Your preferred public author name"
git config user.email "YOUR_GITHUB_NOREPLY_EMAIL"
git add .
git status
git commit -m "Publish early development concept"
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/my-mini-milty-development-concept.git
git push -u origin main
```

Use the `noreply` address shown in GitHub Settings → Emails, rather than your personal email. Check `git status` before committing. The first push will require authentication with GitHub.

**Do not push the old private repository's `.git` history into this clean repository.**
