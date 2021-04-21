# dotgit.fish

Small Fish helpers for storing your dotfiles in git. It essentially standardizes the [Atlassian pattern](https://www.atlassian.com/git/tutorials/dotfiles) in your Fish shell. Follow this guide and place your `--git-dir` in the `~/.dotgit` folder.

## Usage

```
fisher add mbullington/dotgit.fish
```

```sh
dg remote add origin git@github.com:mbullington/dotfiles.git # add your git URL here

dg status
dga # add -A
dgp # push
dgpp # pull 
```

With this pattern, I highly recommend adding a `.gitignore` at your home folder that [whitelists](https://jasonstitt.com/gitignore-whitelisting-patterns) what you want, so you don't accidently commit your entire home folder.

### Editor Helper

`dotgit.fish` also lets you open your dotfiles easily inside an editor or VSCode.

Example in `config.fish`:

```
set -x DOTGIT_EDITOR_PATHS ~/.bin ~/.config ~/.local
```

Then use `edg` (edit dotgit) to open in your $EDITOR, or alternatively `cdg` to open in VSCode.

## License

This work is under the Public Domain. (CC-0)