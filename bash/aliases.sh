# Aliases {{{1 ----------------------------------------------------------------
# RegEx {{{2 ------------------------------------------------------------------
alias grep='grep --color=auto'
alias agrep='agrep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# RegEx 2}}} ------------------------------------------------------------------
# LS {{{2 ---------------------------------------------------------------------
# set OS-specific LS options
if [ "$OS" = "Mac" ]; then
    LS_OPTS='-G'
elif [ "$OS" = "Nix" ]; then
    LS_OPTS='--color=auto'
else
    :
fi

alias ls="ls $LS_OPTS"
alias ll="ls -alF $LS_OPTS"
alias la="ls -A $LS_OPTS"
alias l="ls -CF $LS_OPTS"
# End LS 2}}} -----------------------------------------------------------------
# Docker {{{2 -----------------------------------------------------------------
alias dco='docker-compose'
# End Docker 2}}} -------------------------------------------------------------
# Directories {{{2 ------------------------------------------------------------
alias dev='cd $HOME/dev'
# End Directories 2}}} --------------------------------------------------------
# SSH {{{2 --------------------------------------------------------------------
alias nebula='ssh ee0@gistnebula'
alias hydra='ssh eezell3@hydra'
# End SSH 2}}} ----------------------------------------------------------------
# FZF {{{1 --------------------------------------------------------------------
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# End FZF 1}}} ----------------------------------------------------------------
# Other {{{2 ------------------------------------------------------------------
alias weather='curl wttr.in'
alias python='python3'
alias brewi='brew install'

# if file .bash_aliases exists, respect them also
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi
# End Other 2}}} --------------------------------------------------------------
# End Aliases 1}}} ------------------------------------------------------------
