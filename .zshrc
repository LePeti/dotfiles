# Path to your oh-my-zsh installation.
export ZSH=/Users/plukacs/.oh-my-zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"
source $ZSH/oh-my-zsh.sh

# enable zsh-completions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

plugins=(
    zsh-completions
    docker
    docker-compose
)

# User configuration
export DEFAULT_USER=`whoami`

# Credentials path for the cli-tool-for-r-proj-skeleton
export CREDENTIALS_DIR='/Users/plukacs/secret'

alias zshconfig="subl ~/.zshrc"
alias ems="cd /Users/plukacs/emarsys-repos"
alias dbconfig="subl ~/config/db_config.yml"
alias hotkeys="subl /Users/plukacs/.hammerspoon/"
alias copyconfig="open 'smb://BUD01RODC0202/bigdata/data_research/config' && \
                  sleep 2 && \
                  cp /Volumes/config/db_config.yml ~/secret/ && \
                  umount /Volumes/config"
alias rstudio='/Applications/RStudio.app/Contents/MacOS/RStudio &'
alias crp='python3 /Users/plukacs/emarsys-repos/cli-tool-for-r-proj-skeleton/r_project_setup.py'
alias command-hints="cat ~/.command-hints"
alias csgo="subl '/Users/plukacs/Library/Application Support/Steam/steamapps/common/Counter-Strike Global Offensive/csgo/cfg/autoexec.cfg'"
# alias mouseaccon=defaults write .GlobalPreferences com.apple.mouse.scaling 3
# alias mouseaccoff="defaults write .GlobalPreferences com.apple.mouse.scaling -1"
# alias mouseacc="echo $(defaults read .GlobalPreferences com.apple.mouse.scaling)"


# pyenv for python version management
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipenv for python virtualenv management (virtualenvwrapper wrapper)
export PATH=$PATH:/usr/local/bin/pipenv

# mongodb
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"

# virtualenvwrapper for python virtualenv management
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export GPG_TTY=$(tty)
source /usr/local/bin/virtualenvwrapper.sh

export CLOUDSDK_PYTHON=python
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source ~/.dbt-completion.bash

# copied from ~/.bash_profile
# eval "$(rbenv init -)"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
