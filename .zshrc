# Path to your oh-my-zsh installation.
   2   export ZSH=~/.oh-my-zsh
   3 
   4 # Set name of the theme to load. Optionally, if you set this to "random"
   5 # it'll load a random theme each time that oh-my-zsh is loaded.
   6 # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
   7 ZSH_THEME="avit"
   8 
   9 # Set list of themes to load
  10 # Setting this variable when ZSH_THEME=random
  11 # cause zsh load theme from this variable instead of
  12 # looking in ~/.oh-my-zsh/themes/
  13 # An empty array have no effect
  14 # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
  15 
  16 # Uncomment the following line to use case-sensitive completion.
  17 # CASE_SENSITIVE="true"
  18 
  19 # Uncomment the following line to use hyphen-insensitive completion. Case
  20 # sensitive completion must be off. _ and - will be interchangeable.
  21 # HYPHEN_INSENSITIVE="true"
  22 
  23 # Uncomment the following line to disable bi-weekly auto-update checks.
  24 # DISABLE_AUTO_UPDATE="true"
  25 
  26 # Uncomment the following line to change how often to auto-update (in days).
  27 # export UPDATE_ZSH_DAYS=13
  28 
  29 # Uncomment the following line to disable colors in ls.
  30 # DISABLE_LS_COLORS="true"
  31 
  32 # Uncomment the following line to disable auto-setting terminal title.
  33 # DISABLE_AUTO_TITLE="true"
  34 
  35 # Uncomment the following line to enable command auto-correction.
  36 # ENABLE_CORRECTION="true"
  37 
  38 # Uncomment the following line to display red dots whilst waiting for completion.
  39 # COMPLETION_WAITING_DOTS="true"
  40 
  41 # Uncomment the following line if you want to disable marking untracked files
  42 # under VCS as dirty. This makes repository status check for large repositories
  43 # much, much faster.
  44 # DISABLE_UNTRACKED_FILES_DIRTY="true"
  45 
  46 # Uncomment the following line if you want to change the command execution time
  47 # stamp shown in the history command output.
  48 # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
  49 # HIST_STAMPS="mm/dd/yyyy"
  50 
  51 # Would you like to use another custom folder than $ZSH/custom?
  52 # ZSH_CUSTOM=/path/to/new-custom-folder
  53 
  54 # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  55 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  56 # Example format: plugins=(rails git textmate ruby lighthouse)
  57 # Add wisely, as too many plugins slow down shell startup.
  plugins=(
  59 git
  60 git-extras
  61 pip
  62 python
  63 colored-man-pages
  64 zsh-syntax-highlighting
  65 zsh-autosuggestions
  66 django
  67 docker
  68 emoji
  69 )
  70 
  71 source $ZSH/oh-my-zsh.sh
  72 
  73 # User configuration
  74 
  75 # export MANPATH="/usr/local/man:$MANPATH"
  76 
  77 # You may need to manually set your language environment
  78 # export LANG=en_US.UTF-8
  79 
  80 # Preferred editor for local and remote sessions
  81 # if [[ -n $SSH_CONNECTION ]]; then
  82 #   export EDITOR='vim'
  83 # else
  84 #   export EDITOR='mvim'
  85 # fi
  86 
  87 # Compilation flags
  88 # export ARCHFLAGS="-arch x86_64"
  89 
  90 # ssh
  91 # export SSH_KEY_PATH="~/.ssh/rsa_id"
  92 
  93 # Set personal aliases, overriding those provided by oh-my-zsh libs,
  94 # plugins, and themes. Aliases can be placed here, though oh-my-zsh
  95 # users are encouraged to define aliases within the ZSH_CUSTOM folder.
  96 # For a full list of active aliases, run `alias`.
  97 #
  98 # Example aliases
  99 # alias zshconfig="mate ~/.zshrc"
 100 # alias ohmyzsh="mate ~/.oh-my-zsh"
 101 
 102 # The fuck
 103 eval $(thefuck --alias)
 104 
 105 #compdef pipenv
 106 _pipenv() {
 107   eval $(env COMMANDLINE="${words[1,$CURRENT]}" _PIPENV_COMPLETE=complete-zsh  pipenv)
 108 }
 109 if [[ "$(basename ${(%):-%x})" != "_pipenv" ]]; then
 110   autoload -U compinit && compinit
 111   compdef _pipenv pipenv
 112 fi
