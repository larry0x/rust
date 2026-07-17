---
paths:
  - "**/*.md"
---

# Markdown Guidelines

- Use American spelling and punctuation conventions, including the Oxford comma.
- Use underscores for italic, not asterisks.
- Use a single, unbreakable line for each paragraph.
- After each change, run the formatter: `npx prettier --write "**/*.md"` from the repository root (Prettier respects `.gitignore`, so the `target/` build directory is excluded automatically).
- After each change, run markdownlint and address all issues it raises: `npx markdownlint-cli2 "**/*.md" "#target"` from the repository root (`#target` excludes the build directory). The config is auto-discovered from `.markdownlint.json`; the VSCode extension (`DavidAnson.vscode-markdownlint`) uses the same file.
