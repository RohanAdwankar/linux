# dotfiles

Git-tracked home setup for this machine.

## What lives here

- `home/` contains files symlinked into `$HOME`
- `flake.nix` and `config/home-manager/home.nix` define declarative user packages
- `system/etc/nix/nix.conf` tracks the daemon-level Nix settings
- `bin/bootstrap-nix` installs Nix and applies Home Manager
- `bin/apply-system-files` reapplies tracked root-owned system config
- `bin/apply-home` reapplies the declarative user environment

## Managed shell files

- `.bashrc`
- `.bash_aliases`
- `.bashrc.local`
- `.profile`

## Managed app config

- `.config/nvim`
- `.codex/skills/optimize`
- `.codex/skills/reflect`

## Packages currently managed declaratively

- `uv`
- `python312`
- `cargo`
- `rustc`

## Apply on a new machine

```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
./bin/bootstrap-nix
```

## Notes

- The flake currently targets `aarch64-linux` and user `rohanchromebook`.
- Update `flake.nix` if you reuse this on a different machine or username.
