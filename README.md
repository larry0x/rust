# rust

<!-- ANCHOR: book -->

Opinionated template for multi-crate Rust workspaces, with:

- Configurations for [VS Code][vscode], [Claude Code][claude-code], clippy, rustfmt, [EditorConfig][editorconfig], [markdownlint][markdownlint], and [taplo][taplo].
- [just][just] recipes
- GitHub workflows with [CodeQL][codeql] and [Zizmor][zizmor] audits
- Documentation built with [mdBook][mdbook] with LaTeX and Mermaid graph support, published to GitHub pages via CI

## Prerequisites

### Software

The following software is expected to be installed and available in `PATH`:

- [rustup][rustup] – Rust toolchain manager. Only the stable toolchain is used.
- [just][just] – Command runner. See the `justfile` for available recipes.
- [taplo][taplo] – TOML formatter. Configured by `taplo.toml`.
- [markdownlint-cli2][markdownlint-cli2] – Markdown linter. Configured by `.markdownlint.json`.
- [npx][npx] – Node.js package runner, bundled with npm. Used to run [Prettier][prettier], the Markdown formatter, without a global install.
- [jq][jq] – JSON processor. Used by the `lint-without-features` recipe in the `justfile`.

### VSCode extensions

- [rust-analyzer][vscode-rust-analyzer] – Rust language support.
- [Even Better TOML][vscode-even-better-toml] – TOML language support. Uses `taplo.toml` for formatter settings; reload the VSCode window after changing it.
- [EditorConfig for VS Code][vscode-editorconfig] – Applies the rules in `.editorconfig`.
- [markdownlint][vscode-markdownlint] – Inline Markdown linting. Uses `.markdownlint.json`.
- [Dependi][vscode-dependi] – Dependency management. Shows whether the versions in `Cargo.toml` are up-to-date.
- [Error Lens][vscode-error-lens] – Shows diagnostics inline, next to the offending code.
- [Markdown All in One][vscode-markdown-all-in-one] – Markdown authoring aids: keyboard shortcuts, table of contents, list editing.
- [Todo Tree][vscode-todo-tree] – Collects `TODO` and `FIXME` comments into a tree view.
- [vscode-just][vscode-just] – justfile syntax highlighting.
- [YAML][vscode-yaml] – YAML language support, with schema validation.

[claude-code]: https://claude.com/product/claude-code
[codeql]: https://codeql.github.com/
[editorconfig]: https://editorconfig.org/
[jq]: https://jqlang.org/
[just]: https://github.com/casey/just
[markdownlint]: https://github.com/davidanson/markdownlint
[markdownlint-cli2]: https://github.com/DavidAnson/markdownlint-cli2
[mdbook]: https://rust-lang.github.io/mdBook/
[npx]: https://docs.npmjs.com/cli/commands/npx
[prettier]: https://prettier.io/
[rustup]: https://rustup.rs/
[taplo]: https://taplo.tamasfe.dev/
[vscode]: https://code.visualstudio.com/
[vscode-dependi]: https://marketplace.visualstudio.com/items?itemName=fill-labs.dependi
[vscode-editorconfig]: https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig
[vscode-error-lens]: https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens
[vscode-even-better-toml]: https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml
[vscode-just]: https://marketplace.visualstudio.com/items?itemName=nefrob.vscode-just-syntax
[vscode-markdown-all-in-one]: https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one
[vscode-markdownlint]: https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
[vscode-rust-analyzer]: https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer
[vscode-todo-tree]: https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree
[vscode-yaml]: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml
[zizmor]: https://zizmor.sh/

<!-- ANCHOR_END: book -->
