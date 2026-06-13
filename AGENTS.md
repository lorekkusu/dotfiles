# AGENTS.md

## Cursor Cloud specific instructions

This repository is a personal **dotfiles** repo, not a long-running application. There
are no language dependencies, automated tests, lint config, or build step.

### What the "app" is

`make install` (alias for `bash install.sh`) is the entry point. On Linux it:

1. Sources `linux.sh` (`apt-get install iputils-ping`).
2. Installs Oh My Zsh + the `zsh-syntax-highlighting`, `zsh-autosuggestions`, and
   `zsh-autocomplete` plugins (guarded by `~/.oh-my-zsh` existence, so re-runs are
   idempotent).
3. Symlinks `any/.gitconfig`, `any/.zshenv`, `any/.zprofile`, `any/.zshrc` into `$HOME`.

The macOS path (`macos.sh` + `macos/Brewfile`) only runs on Darwin and is not exercised
in this Linux VM.

### Running / verifying

- The dotfiles are zsh-based. `zsh` is **not** installed by `install.sh` on Linux; it is
  installed once during environment setup and persists in the VM snapshot. If `zsh` is
  ever missing, install it with `sudo apt-get install -y zsh`.
- To verify the setup works, launch an interactive shell and exercise a dotfile feature,
  e.g.: `zsh -i -c 'echo $ZSH_THEME; git feat -s test "msg"'`. The `git feat/fix/chore/...`
  aliases (defined in `any/.gitconfig`) produce Conventional Commit messages and are the
  clearest end-to-end signal that the dotfiles loaded.
- Harmless warnings when launching zsh in a headless terminal: `terminfo[kcbt]: parameter
  not set` (from `zsh-autocomplete`) and `'cursor' flavour of VS Code not detected`. These
  do not indicate failure.

### Gotchas

- The git `[user]` identity in `any/.gitconfig` belongs to the repo owner. Symlinking it
  into `$HOME` overrides global git identity; this is fine inside the VM but be aware it
  affects ad-hoc commits made from `$HOME`.
