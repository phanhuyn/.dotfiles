export PATH=~/develop/gohome/bin:$PATH
export GOPATH="/Users/nguyenph/develop/gohome"
export GOBIN="/Users/nguyenph/develop/gohome/bin"
export GOEXE="/Users/nguyenph/develop/gohome/bin"
export HADOOP98=10.65.184.82
export HADOOP99=10.65.184.83
export RECOMMEND=10.10.48.161
export SEARCH_TEST=203.117.178.76 #10.65.136.76
export INDEXER_LIVE=10.10.48.210
export SEARCH_SERVER_LIVE=10.10.48.149
export GDS_LIVE=10.10.48.148
export ML_LOG_SERVER=10.65.192.51
export MERLION_MONITOR=10.65.16.18
export LOG_SERVER=10.65.192.51
export HADOOPNODE=10.65.184.70
alias runDockerBuild="docker run -it -v $GOPATH/src:/go/src --entrypoint /bin/bash harbor.shopeemobile.com/shopee/build-env:latest"
alias hstart="/usr/local/Cellar/hadoop/2.8.1/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.8.1/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.8.1/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.8.1/sbin/stop-dfs.sh"
alias dog="pygmentize -g"
alias yarnjs="/usr/local/Cellar/yarn/1.3.2/bin/yarn"
alias ls="ls -lh"
alias protoc3.2="protoc-3.2.0-osx-x86_64"
alias timestamp='date +"%s"'
goto(){
	echo "Where to go? Options are:"
	echo "-------      HADOOP      -------"
	echo "1  | Hadoop98"
	echo "2  | Hadoop99"
	echo "3  | Hadoop70"
	echo "-------      SEARCH      -------"
	echo "4  | Search (Test)"
	echo "-------  RECOMMENDATION  -------"
	echo "5  | Merlion Monitor"
	echo "-------       LOG       --------"
	echo "6  | Log server"
	read location
	case ${location} in
	 "1") ssh ld-nguyenph@$HADOOP98
	;;
	 "4") ssh ld-nguyenph@$SEARCH_TEST
	;;
	 "2") ssh ld-nguyenph@$HADOOP99
	;;
	 "5") ssh ld-nguyenph@$MERLION_MONITOR
	;;
	 "6") ssh ld-nguyenph@$LOG_SERVER
	;;
	 "3") ssh ld-nguyenph@$HADOOPNODE
	;;
	esac
}

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/nguyenph/.oh-my-zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mh"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  z
)

source $ZSH/oh-my-zsh.sh

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
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. ~/z.sh
