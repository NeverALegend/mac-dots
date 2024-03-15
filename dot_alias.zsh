
# ⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⢠⣤⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀
# ⡀⡀⡀⡀⡀⣿⣿⡀⡀⡀⡀⡀⡀⢸⣿⡀⡀⡀⣿⣿⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀
# ⡀⡀⡀⡀⣼⡿⢻⣷⡀⡀⡀⡀⡀⢸⣿⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀
# ⡀⡀⡀⢠⣿⠁⡀⣿⣆⡀⡀⡀⡀⢸⣿⡀⡀⡀⣿⡇⡀⡀⡀⣠⣶⣿⣿⣷⣄⡀⡀⡀⣴⣿⠿⠿⣿⣦⡀⡀⡀⣴⣿⠿⠿⣿⣦⡀⡀⡀⣴⣿⠿⠿⣿⣦
# ⡀⡀⡀⣿⡏⡀⡀⠸⣿⡀⡀⡀⡀⢸⣿⡀⡀⡀⣿⡇⡀⡀⡀⠙⠁⡀⡀⠈⣿⡄⡀⡀⣿⡅⡀⡀⡀⡀⡀⡀⣿⡟⡀⡀⡀⡀⢿⣧⡀⡀⣿⡅⡀⡀⡀⡀
# ⡀⡀⣼⣿⣤⣤⣤⣤⣿⣷⡀⡀⡀⢸⣿⡀⡀⡀⣿⡇⡀⡀⡀⣤⣶⣾⠿⠿⣿⡇⡀⡀⠈⠻⣷⣦⣄⡀⡀⡀⣿⠿⠿⠿⠿⠿⠿⠿⡀⡀⠈⠻⣷⣦⣄⡀
# ⡀⢠⣿⠋⠉⠉⠉⠉⠉⣿⣆⡀⡀⢸⣿⡀⡀⡀⣿⡇⡀⡀⣾⣿⡀⡀⡀⡀⣿⡇⡀⡀⡀⡀⡀⡀⠻⣿⡀⡀⣿⣆⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⠻⣿
# ⡀⣿⡟⡀⡀⡀⡀⡀⡀⢹⣿⡀⡀⢸⣿⡀⡀⡀⣿⡇⡀⡀⠹⣿⣦⣤⣴⡿⣿⡇⡀⠠⣿⣤⣀⣀⣼⣿⡀⡀⠙⣿⣶⣄⣀⣠⣾⠟⡀⠠⣿⣤⣀⣀⣼⣿
# ⠈⠉⡀⡀⡀⡀⡀⡀⡀⡀⠉⠁⡀⠈⠉⡀⡀⡀⠉⠁⡀⡀⡀⡀⠉⠉⡀⡀⠈⠉⡀⡀⡀⠉⠛⠛⠉⡀⡀⡀⡀⡀⠉⠛⠛⠋⡀⡀⡀⡀⡀⠉⠛⠛⠉⡀

# Config alias
alias zshconfig='chezmoi edit -a ~/.zshrc' # chezmoi edit zshrc
alias ohmyzsh='chezmoi edit -a ~/.oh-my-zsh' # chezmoi edit oh-my-zsh
alias chezmoic='nvim ~/.config/chezmoi/chezmoi.toml' # chezmoi edit chezmoi config
alias aliasc='chezmoi edit -a ~/.alias.zsh' # chezmoi edit alias.zsh
alias nvimp='chezmoi edit -a ~/.config/nvim/init.lua' # chezmoi edit nvim init.lua
alias kittyc='chezmoi edit -a ~/.config/kitty/kitty.conf' # chezmoi edit kitty config


# Bat aliases
alias c='bat'
alias cdif='bat --diff'


# app aliases
alias v='nvim'
alias n='nvim .'
alias vim='nvim'
alias nv='nvim'
alias vi='vim'


# LazyGit aliases
alias lg='lazygit'

# overrider behavior using SHIFT + Q instead of q
function lg() {
  export LAZY_NEW_DIR_FILE=~/.lazygit/newdir

  lazygit "$@"

  if [ -f "$LAZY_NEW_DIR_FILE" ]; then
    cd "$(cat $LAZY_NEW_DIR_FILE)"
    rm -f "$LAZY_NEW_DIR_FILE" > /dev/null
  fi
}

# folder aliases || favorite folders
alias pr='cd /Users/legend/projects' # projects folder
alias sec='cd /Users/legend/projects/secret' #secret Github
alias per='cd /Users/legend/projects/personal' # personal Github
alias test='cd /Users/legend/projects/test_play' # test playground
alias dots='cd /Users/legend/.config' # dots general area
alias ego='cd /Users/legend/alter-ego' # obsidian vault

	#Backup Data aliases

alias gh='cd /mnt/github' # github-bkup folder
alias secb='cd /mnt/github/secret' #secret Github backup
alias perb='cd /mnt/github/personal' # personal Github
alias dot='cd /mnt/github/dotfiles' # dotfiles Github


# Chezmoi aliases
alias cz='chezmoi '
alias cza='chezmoi add'
alias czcd='chezmoi cd'
alias czdoc='chezmoi doctor'
alias ca='chezmoi edit -a'
alias czdif='chezmoi diff'
alias czap='chezmoi apply'
alias czstat='chezmoi status'


# Misc
alias e='exit'
alias zsrc='source ~/.zshrc'
alias un='brew uninstall' # uninstall package
alias up='brew update' # update system/package/aur
alias pl='brew list' # list installed package
alias ps='brew search' # list availabe package
alias pc='brew cleanup' # remove unused cache
alias vc='code' # gui code editor


# Fzf aliases

alias fman='compgen -c | fzf --preview "man {1}" | xargs man' # fuzzy find command into man page
alias ftldr='compgen -c | fzf --preview "tldr {1}" | xargs tldr' # fuzzy find command into tldr page
alias all='find / -type f 2>/dev/null | fzf --preview='bat --color always {}'' # search for any file 
alias cur='find . -type f | rg --files | fzf --preview='bat --color always {}'' # fuzzy find file in current dir 
alias home='find "$HOME" -type f | rg --files --hidden | fzf --preview='bat --color always {}'' # fuzzy find file in current dir and open in nvim
alias pi='pacman -Q | fzf --preview "pacman -Qi {1}"' # Search installed packages and preview details


manf() {
  cmd=$(compgen -c | fzf --preview "man {1}" | xargs)
    if [[ -n $cmd ]]; then
      man $cmd | fzf 
    fi
}
