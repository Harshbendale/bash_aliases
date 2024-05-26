# bash_aliases
This repository is meant to host my precious bash_aliases and Windows terminal wsl configs.

## Setup
1. `git clone git@github.com:Harshbendale/bash_aliases.git`
2. Add this in .bashrc file:
```bash
if [ -f "$HOME/bash_aliases/.bash_aliases" ]; then
    source "$HOME/bash_aliases/.bash_aliases"
fi
```
3. `source ~/.bashrc`

## WSL windows terminal config:

### Icon used in tab:
Penguin icon: ms-appx:///ProfileIcons/{9acb9455-ca41-5af7-950f-6bca1bc9722f}.png<br/>
Ubuntu icon: https://assets.ubuntu.com/v1/49a1a858-favicon-32x32.png

### Color scheme:
Campbell

### Font face:
Cascadia Mono

### Font Size:
12

### Cursor shape:
Bar (|)

### Ubuntu version currently used:
20.04
