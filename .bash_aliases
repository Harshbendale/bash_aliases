#####################################
# Set Bash aliases
#####################################

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
alias gb='git branch'
alias gad='git add .'
alias gas='git add *'
alias gdf='git diff'
alias gdfs='git diff --staged'
alias gdflc='git diff $(git log -1 --format="%H")'
alias gdfl2c='git diff -u $(git log -2 --format="%H" | sed -n "2p") $(git log -1 --format="%H")'

# navigation and directory management aliases:
alias lsa='ls -a'
alias lsal='ls -al'
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
alias rmr='rm -r'

# grep:
alias gll='ll -a| grep'
alias glsa='ls -a | grep'
alias ghis='history | grep'

# python:
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias vd='deactivate'

# bashrc:
alias 'srcbash'='source ~/.bashrc'
alias 'catbash'='cat ~/.bashrc'
alias 'nanobash'='nano ~/.bashrc'
alias 'vimbash'='vim ~/.bashrc'

#####################################
# Functions that can be used as alias
#####################################

# mkdir and cd into that dir:
mkdcd(){
	mkdir -p "$1"
	cd "$1"
}

# git clone and pre-commit:
gclone(){
	repo_ssh_url="$1"
	echo "$repo_ssh_url"
	git clone $repo_ssh_url
	repo_name=$(basename "$repo_ssh_url" ".${repo_ssh_url##*.}")
	echo "$repo_name"
	cd $repo_name
	if [ -f .pre-commit-config.yaml ]; then
		echo "[info] Loaded pre-commit-config from this repository."
	else
		cp "${bash_aliases_repo}/.pre-commit-config.yaml" .
		echo "[info] Copied your personal pre-commit file."
	fi
	pre-commit install
}

#####################################
# Setting PS1 bash prompt
#####################################

# show user / super user emoji

set_user() {
        if sudo -n true 2>/dev/null; then
                echo -e "\U1F4AA\U1F60E"
        else
                echo -e "\U1F60E"
        fi
}
export PS1='$(set_user):\[\e[32m\]\w$(__git_ps1 " (\[\e[31m\]%s\[\e[32m\])")\[\e[0m\]\$ '
