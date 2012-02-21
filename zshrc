# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
unsetopt correct_all

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"

# Example aliases
alias l="ls -l"
alias remoteirssi="export AUTOSSH_POLL=300 ;autossh -M 20000 -t qwa.dk 'screen -x -R -D -U'"
alias sudo='nocorrect sudo'
alias dikuSshOracleDbTunnel='ssh -f -N -L 1521:dbw.diku.dk:1521 msn378@brok.diku.dk'
alias qwapsqltunnel='ssh -f -N -L 5432:localhost:5432 qwa.dk'

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/mosml/bin:/usr/bin/vendor_perl:/usr/bin/core_perl

bindkey "^[[8~" end-of-line
bindkey "^[[7~" beginning-of-line

# Options for Zsh
HISTFILE=$HOME/.history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt share_history
setopt hist_ignore_space

setopt nobeep # I hates the beeps
setopt auto_cd # typing just a directory name cds into it
setopt multios # built-in tee
setopt extended_glob
setopt nullglob # it's not an error for a glob to expand to nothing
setopt list_ambiguous
setopt no_nomatch
setopt interactivecomments # Allow comments even in the interactive shell
setopt listpacked # column width doesn't have to be constant
setopt complete_in_word # hitting tab on the f in Mafile does the right thing
