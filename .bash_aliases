# git aliases:
alias gcm='git checkout main'
alias gst='git status'
alias gco='git checkout'
alias gac='git commit -a -m'
alias gaec='git commit --allow-empty -m'
alias gfrbs='git fetch && git branch -v -a'
alias gsw='git switch'
alias pull='git pull'
alias push='git push'
alias clone='git clone'
alias gb='git branch'
alias gad='git add .'
alias gas='git add *'
alias gdf='git diff'

# navigation aliases:
alias lsa='ls -a'
alias lla='ll -a'
alias lt='ls --human-readable --size -1 -S --classify'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias ..6='cd ../../../../../..'
alias ..7='cd ../../../../../../..'
alias ..8='cd ../../../../../../../..'
alias ..9='cd ../../../../../../../../..'

# grep:
alias gll='ll | grep'
alias gls='ls | grep'
alias gh='history | grep'

# python:
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias vd='deactivate'

# bashrc:
alias 'srcbash'='source ~/.bashrc'
alias 'catbash'='cat ~/.bashrc'
alias 'nanobash'='nano ~/.bashrc'
