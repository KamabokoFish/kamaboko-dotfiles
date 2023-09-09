if status is-interactive
    set -g fish_greeting

    #alias
    alias python='python3'
    alias tp='trash-put'
    alias nut='nautilus .'
    alias dstart='systemctl --user start docker-desktop'
    alias dstop='systemctl --user stop docker-desktop'
    alias la='eza -la --icons'
    alias ll='eza -l --icons'
    alias lt='eza -T -L 3 -a -I "node_modules|.git|.cache" --icons'
    alias t='tmux'
    alias bd='bundle'
    alias vim='nvim'
    alias lg='lazygit'
    alias g='git'
    alias com='cz c'
end
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
