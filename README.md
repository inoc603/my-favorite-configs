# my-favorite-configs

A set of my favorite settings

All configs are soft linked to where they should be. Existing files and folders
will be renamed as `$NAME-bak` for backup.

## zsh

```bash
make zsh
```

Links:
- `.zhsrc` -> `$HOME/.zshrc`
- `zsh` -> `$HOME/.zsh`

Put local configs like environment variables in `~/.zshlocal`, and they'll be
loaded.

## tmux

```bash
make tmux
```

Links:
- `.tmux.conf` -> `$HOME/.tmux.conf`
- `tmux`(will be created) -> `$HOME/.tmux`

## utilities

```bash
make bin
```

Links:
- `bin/*` -> `$HOME/bin/*`
