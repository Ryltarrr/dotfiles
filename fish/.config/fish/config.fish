set PATH /home/justin/.yarn/bin $PATH
# set TERM screen-256color

# go
set PATH /usr/local/go/bin $PATH
set PATH /home/justin/go/bin $PATH
set GOBIN /home/justin/go/bin/
set GOPATH /home/justin/go

set PATH $HOME/Android/android-studio/bin $PATH
set ANDROID_HOME $HOME/Android/Sdk
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/tools/bin $PATH
set PATH $ANDROID_HOME/platform-tools $PATH

# set PATH /home/justin/.platformio/penv/bin $PATH
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.config/emacs/bin $PATH

alias ssh="kitty +kitten ssh"
alias ls="exa"
# alias cat="bat"
alias python=python3
alias pip=pip3
alias pio=platformio

function cheat.sh
    curl cheat.sh/$argv
end

set FISH_CONFIG ~/.config/fish/config.fish

# alias tmux='tmux -2'
alias lg='lazygit'
alias icat='kitty +kitten icat'
alias config='/usr/bin/git --git-dir=/home/justin/.cfg/ --work-tree=/home/justin'
alias lgc='lazygit --git-dir=$HOME/.cfg --work-tree=$HOME'
alias ld='docker run --rm -it --name lazydocker -v /var/run/docker.sock:/var/run/docker.sock lazyteam/lazydocker'
alias d='docker'
alias de='docker exec'
alias dc='docker compose'
alias dci='dc -f ~/Documents/inlead-compose/docker-compose.yml'
alias dcie='dci exec'
alias dcil='dci logs -f --tail 300'

alias gf='git fetch'
alias gc='git checkout'
alias gs='git stash'
alias gp='git pull'
alias gP='git push'

# if not set -q TMUX
#     set -g TMUX tmux new-session -d -s base
#     eval $TMUX
#     tmux attach-session -d -t base
# end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export GOOGLE_CLOUD_PROJECT "gemini-code-assist-anytime-org"

set -g EDITOR /usr/bin/nvim
set -g fish_greeting
# fish_config theme save "Catppuccin Macchiato"
starship init fish | source
# eval "$(/home/justin/Documents/brand-analyzer/bin/console completion fish)"
alias sd='cd (find ~/dev/platform-anytime/projects/ -maxdepth 1 -type d | fzf)'

# Created by `pipx` on 2025-10-14 07:32:37
set PATH $PATH /home/jug/.local/bin

set -Ux CARAPACE_BRIDGES 'fish' # optional
carapace _carapace | source
# jj util completion fish | source
