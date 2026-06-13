# AGENTS.md

## Cursor Cloud specific instructions

This repo is a **personal dotfiles repository**, not a runnable product. There is no
web/app server, database, or lint/test/build framework. "Running the application"
means executing the installer that bootstraps a shell environment.

### What the installer does
- Entry point: `make install` (runs `bash install.sh`). See `Makefile`.
- `install.sh` detects the OS:
  - Linux → sources `linux.sh` (`apt-get install iputils-ping`).
  - macOS → sources `macos.sh` (installs Homebrew + `brew bundle` from `macos/Brewfile`).
    The macOS path cannot run on the Linux cloud VM.
- Then installs Oh My Zsh + 3 custom plugins (`zsh-syntax-highlighting`,
  `zsh-autosuggestions`, `zsh-autocomplete`) — requires network access.
- Then symlinks `any/.gitconfig`, `any/.zshenv`, `any/.zprofile`, `any/.zshrc` into `$HOME`.

### Gotchas (non-obvious)
- **`zsh` is required to test the dotfiles but `linux.sh` does NOT install it.** The
  startup update script installs `zsh`; without it you cannot source `any/.zshrc`.
- **`install.sh` overwrites `~/.gitconfig`** with `any/.gitconfig`, which sets a
  different git user (`YuHung Lo`). This silently changes your commit identity. Before
  running it, pin the intended identity at the repo level:
  `git config --local user.name "Cursor Agent" && git config --local user.email "cursoragent@cursor.com"`
  (repo-local config overrides the global `~/.gitconfig` symlink).
- Do **not** put `bash install.sh` in the startup update script: it is destructive to
  `$HOME` (overwrites gitconfig/zshrc) and depends on network for Oh My Zsh.
- Verify the setup by launching an interactive login zsh:
  `zsh -l -i -c 'echo $ZSH_THEME; echo $plugins'`. The messages
  `terminfo[kcbt]: parameter not set` and `'cursor' flavour of VS Code not detected`
  are harmless (no full TTY / Cursor editor absent on Linux).
- nvm is loaded lazily (`zstyle ':omz:plugins:nvm' lazy yes`), so `node`/`npm` resolve
  only on first use inside zsh.
