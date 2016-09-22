# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(rbenv init -)"

# The following chars are word boundaries (relevant for C-w)
export WORDCHARS='*?_.[]~=&;!#$%^(){}<>'

# Don't want autocorrect suggestions
unsetopt correct_all

source ~/.aliases

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Make `g` have the same completions as `git`
compdef g=git

unset SSH_ASKPASS

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

setopt auto_cd
setopt completealiases
setopt HIST_IGNORE_DUPS

alias cwd='cd "$(cat ~/.cwd)"'

# ------------------------------------------------------------------------------
# http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
   if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
     zle _expand_alias
   fi
   zle self-insert
}

function chpwd() {
    emulate -L zsh
    ls
}
export cd

zle -N globalias

bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches
# ------------------------------------------------------------------------------

source <(npm completion)

# http://superuser.com/questions/836883/increasing-yosemite-maxfile-limit-for-application
ulimit -n 65536
ulimit -u 2048
