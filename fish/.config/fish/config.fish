set -U fish_user_paths /opt/nvim $fish_user_path

# Aliases
alias neofetch='fastfetch'


# abbreviations
abbr --add gs 'git status'
abbr --add gc 'git checkout'
abbr --add ga 'git add .'
abbr --add gp 'git push'

abbr --add fishs 'source ~/.config/fish/config.fish'
abbr --add tmuxs 'tmux source ~/.config/tmux/tmux.conf'

abbr --add pacman 'sudo pacman -S'

if status is-interactive
    # Commands to run in interactive sessions can go here
end


