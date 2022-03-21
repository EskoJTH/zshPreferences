# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Start typing + [Up-Arrow] - fuzzy find history forward
if [[ -n "${terminfo[kcuu1]}" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  
  bindkey -M emacs "^[p" up-line-or-beginning-search
  # bindkey -M viins "${terminfo[kcuu1]}" up-line-or-beginning-search
  # bindkey -M vicmd "${terminfo[kcuu1]}" up-line-or-beginning-search
fi

# Start typing + [Down-Arrow] - fuzzy find history backward
if [[ -n "${terminfo[kcud1]}" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search

  bindkey -M emacs "^[n" down-line-or-beginning-search
  # bindkey -M viins "${terminfo[kcud1]}" down-line-or-beginning-search
  # bindkey -M vicmd "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# key[Control-Left]="${terminfo[kLFT5]}"
# key[Control-Right]="${terminfo[kRIT5]}"

# [[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
# [[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

# [[ -n "${key[A]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
# [[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search


# Use modern completion system
# autoload -Uz compinit
# compinit

# zstyle ':completion:*' auto-description 'specify: %d'
# zstyle ':completion:*' completer _expand _complete _correct _approximate
# zstyle ':completion:*' format 'Completing %d'
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*' menu select=2
# eval "$(dircolors -b)"
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# zstyle ':completion:*' use-compctl false
# zstyle ':completion:*' verbose true

# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'




#requests in readme to be last
ZSHLIBPATH="/home/esko/.zshplugins/"
source ${ZSHLIBPATH}zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_TAB_TITLE_CONCAT_FOLDER_PROCESS=true
source ${ZSHLIBPATH}zsh-tab-title/title.plugin.zsh

ZSH_AUTOSUGGEST_STRATEGY=history
source ${ZSHLIBPATH}zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH=/home/esko/.zshplugins/ohmyzsh
source ${ZSHLIBPATH}ohmyzsh/lib/history.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/compfix.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/correction.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/spectrum.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/completion.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/clipboard.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/directories.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/git.zsh
source ${ZSHLIBPATH}ohmyzsh/lib/theme-and-appearance.zsh
source ${ZSHLIBPATH}ohmyzsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh
source ${ZSHLIBPATH}ohmyzsh/plugins/fzf/fzf.plugin.zsh
source ${ZSHLIBPATH}ohmyzsh/plugins/bgnotify/bgnotify.plugin.zsh
ZSH_THEME="rkj-repos"
source ${ZSHLIBPATH}ohmyzsh/themes/rkj-repos.zsh-theme

# cols=$(tput cols)

[ -f "/home/esko/.ghcup/env" ] && source "/home/esko/.ghcup/env" # ghcup-env
