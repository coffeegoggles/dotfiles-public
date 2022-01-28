
# theme
set -g theme_color_scheme terminal-light
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# alias
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim & alias vim nvim

set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end
