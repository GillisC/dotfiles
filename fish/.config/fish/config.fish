set -U fish_user_paths /opt/nvim $fish_user_path

# Aliases
alias neofetch='fastfetch'
tmux


# abbreviations
abbr --add gs 'git status'
abbr --add gc 'git commit -m'
abbr --add gco 'git checkout -b'
abbr --add ga 'git add .'
abbr --add gp 'git push'

abbr --add fishs 'source ~/.config/fish/config.fish'
abbr --add tmuxs 'tmux source ~/.config/tmux/tmux.conf'

abbr --add pacman 'sudo pacman -S'

abbr --add conf 'nvim .config'

# rust
abbr --add cb 'cargo build'
abbr --add cr 'cargo run' 
abbr --add ct 'cargo test'

if status is-interactive
    # Commands to run in interactive sessions can go here
end


