
# theme
set -g theme_color_scheme terminal-light
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# alias
alias ls "exa --icons"
alias la "ls -a"
alias ll "exa --icons -l"
alias lla "ll -ah"
alias g git
alias t touch
command -qv nvim & alias vim nvim

set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end
