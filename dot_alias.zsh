
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
alias hyprsource='chezmoi edit -a ~/.config/hypr/hyprland.conf' # chezmoi edit hyprland main source
alias usrk='chezmoi edit -a ~/.config/hypr/keybindings.conf' # chezmoi edit hyprland keybindings
alias usrw='chezmoi edit -a ~/.config/hypr/windowrules.conf' # chezmoi edit hyprland windowrules
alias usrp='chezmoi edit -a ~/.config/hypr/userprefs.conf' # chezmoi edit hyprland userprefs
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
alias pr='cd /mnt/projects' # projects folder
alias sec='cd /mnt/projects/secret' #secret Github
alias per='cd /mnt/projects/personal' # personal Github
alias dots='cd /mnt/projects/dotfiles/' # "updated" dots
alias test='cd /mnt/projects/test_play' # test playground
alias notes='cd /mnt/projects/secret/legend_vault' # obsidian vault
alias hypr='cd /mnt/projects/secret/legendhypr/' # hyprland script install

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


# Snapper aliases
alias sl='snapper ls'
alias sd='snapper delete' 
alias single='snapper -c root create --description "***RECENT BASE CONFIG***"' 
alias grub-up='sudo grub-mkconfig -o /boot/grub/grub.cfg'


# aiImages aliases
alias aiout='cd /mnt/projects/aiImages/Fooocus/outputs && ll'
alias aistart='source /mnt/projects/aiImages/Fooocus/foocus/bin/activate && python /mnt/projects/aiImages/Fooocus/entry_with_update.py'


# Misc
alias e='exit'
alias zsrc='source ~/.zshrc'
alias clip='wl-copy'
alias chd='cliphist wipe'
alias cache='cd /mnt/projects/secret/legendhypr/Scripts/ && ./create_cache.sh -f'
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias ps='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
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
