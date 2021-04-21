# used to manage my actual dotfiles repository
# heavily inspired by this guide here:
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

alias dotgit 'git --git-dir=$HOME/.dotgit/ --work-tree=$HOME'

## more dotgit helpers

abbr dg 'dotgit'

function dga
  dotgit add $DOTGIT_PATHS
end

alias dgp 'dotgit push'
alias dgpp 'dotgit pull'

### dotgit helper for editors

function cdg
  code $DOTGIT_EDITOR_PATHS
end

function edg
  $EDITOR $DOTGIT_EDITOR_PATHS
end
