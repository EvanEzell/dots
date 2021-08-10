# exports {{{1 ----------------------------------------------------------------
if [[ "$(uname -s)" =~ 'Darwin' ]]; then
	echo 'Running in MacOS'
	OS='Mac'
elif [[ "$(uname -a)" =~ 'CYGWIN' ]]; then
	echo 'Running in CYGWIN'
	OS='Win'
else
	echo 'Running in *nix'
	OS='Nix'
fi
export PATH=":$HOME/bin:$PATH"
export VISUAL=vim
export EDITOR="$VISUAL"
export GZIP_OPT=-9
export TERM=xterm-256color
# end exports 1}}} ------------------------------------------------------------
