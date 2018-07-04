export TERM="xterm-256color"

#################################################################################################
# ALIAS
alias dog="pygmentize -g"
alias yarnjs="/usr/local/Cellar/yarn/1.3.2/bin/yarn"
alias ls="ls -lh"
alias protoc3.2="protoc-3.2.0-osx-x86_64"
alias timestamp='date +"%s"'
alias rm='echo use rmtrash instead!'
# alias vim='nvim'

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# get timestamp func
gettimestamp() {
	echo 'Executing $(date -j -f "%Y%m%d %H%M%S" <your-input> "+%s")'
	echo 'Enter date time (yyyymmdd hhmmss) - local system timezone'
	read input
	date -j -f "%Y%m%d %H%M%S" "$input" "+%s"
}

# source /Users/nguyenph/develop/gohome/src/git.garena.com/nguyenph/playground/scriptatsee.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export color
# export TERM="xterm-256color"

##################################################################################################
# GO
export GOPATH=~/develop/gohome
# export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

##################################################################################################
# OH-MY-ZSH
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# THEME
ZSH_THEME=powerlevel9k/powerlevel9k

# PLUGINS
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
git 
zsh-syntax-highlighting
zsh-autosuggestions
zsh-syntax-highlighting-filetypes
)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 
source $ZSH/oh-my-zsh.sh

# z
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# zsh-autosuggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

##################################################################################################
# powerlevel9k

# spacing
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# right/left status bar
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)

# color
POWERLEVEL9K_TIME_BACKGROUND='248'
POWERLEVEL9K_TIME_FOREGROUND='black'

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='235'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='248'
POWERLEVEL9K_DIR_HOME_BACKGROUND='235'
POWERLEVEL9K_DIR_HOME_FOREGROUND='248'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='235'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='248'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

# truncate the dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=8
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="Default"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;
