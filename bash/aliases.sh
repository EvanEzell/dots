# Aliases {{{1 ----------------------------------------------------------------
# Editor {{{2 -----------------------------------------------------------------
alias vi='vim'
# Editor 2}}} ------------------------------------------------------------------
# RegEx {{{2 ------------------------------------------------------------------
alias grep='grep --color=auto'
alias agrep='agrep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# RegEx 2}}} ------------------------------------------------------------------
alias grep='grep --color=auto'
alias agrep='agrep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# RegEx 2}}} ------------------------------------------------------------------
alias grep='grep --color=auto'
alias agrep='agrep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# RegEx 2}}} ------------------------------------------------------------------
# CD {{{2 ---------------------------------------------------------------------
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias cd6='cd ../../../../../..'
alias cd7='cd ../../../../../../..'
alias cd8='cd ../../../../../../../..'
alias cd9='cd ../../../../../../../../..'
# End CD 2}}} -----------------------------------------------------------------
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
# Files {{{2 ------------------------------------------------------------------
alias words='vim ~/dev/personal/words.txt'
# End Files 2}}} --------------------------------------------------------------
# Directories {{{2 ------------------------------------------------------------
alias dev='cd $HOME/dev/work/'
alias diss='cd $HOME/dev/work/dissertation/'
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
alias brewu='brew upgrade'
alias tt='watson'
# if file .bash_aliases exists, respect them also
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi
# End Other 2}}} --------------------------------------------------------------
# End Aliases 1}}} ------------------------------------------------------------
