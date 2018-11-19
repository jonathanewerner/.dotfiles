# Source Prezto.
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# eval "$(rbenv init -)"

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
# compdef g=git

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
# History
HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"       # The path to the history file.
HISTSIZE=10000                   # The maximum number of events to save in the internal history.
SAVEHIST=10000                   # The maximum number of events to save in the history file.
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing non-existent history.

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

# OPAM configuration
. /Users/jwerner/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="$HOME/.yarn/bin:$HOME/pear/bin:$PATH"

# terminal.app tab title = `pwd`
precmd () { print -Pn "\e]2;%~\a" }

# prevent Ctrl-D terminating shell session (you need to press ctrl-d 43 times to do it, or type `exit`)
set -o ignoreeof

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

PROMPT="
%~ > "

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
