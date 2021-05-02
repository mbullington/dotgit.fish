# dotgit.fish

Small Fish helpers for storing your dotfiles in git. It essentially standardizes the [Atlassian pattern](https://www.atlassian.com/git/tutorials/dotfiles) in your Fish shell. Follow this guide and place your `--git-dir` in the `~/.dotgit` folder.

A helper for this is located at [setup.sh](./setup.sh). It will read your Git remote URL from the `DOTGIT_URL` variable.

If you trust me to run code on your computer, you can do this one-liner (**change my dotfiles URL for yours!**):

```sh
curl -Lks http://bit.do/cfg-install | env DOTGIT_URL=git@github.com:mbullington/dotfiles.git /bin/bash
```


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

With this pattern, I highly recommend adding a `.gitignore` at your home folder that [whitelists](https://jasonstitt.com/gitignore-whitelisting-patterns) what you want, so you don't accidently commit your entire home folder. If you do this, put the following in your `config.fish`:

```
set -x DOTGIT_PATHS "-A"
```

Otherwise, you can set `DOTGIT_PATHS` to whichever paths you'd like to add.

### Editor Helper

`dotgit.fish` also lets you open your dotfiles easily inside an editor or VSCode.

Example in `config.fish`:

```
set -x DOTGIT_EDITOR_PATHS ~/.bin ~/.config ~/.local
```

Then use `edg` (edit dotgit) to open in your $EDITOR, or alternatively `cdg` to open in VSCode.

## License

This work is under the Public Domain. (CC-0)

`setup.sh` is under the MIT License and more info can be found within the file.
