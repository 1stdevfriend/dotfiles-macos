# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "michealaquilina/zsh-autosuggestions"
plug "zap-zsh/magic-enter"
plug "zap-zsh/nvm"
plug "zap-zsh/fzf"
plug "wintermi/zsh-starship"
plug "zap-zsh/completions"
plug "zap-zsh/sudo"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Plugins
plugins=(zsh-starship completions colored-man-pages autojump zsh-autopair brew git git-flow-avh git-extras marktext node pip pm2 copyfile websearch history z zsh-autoswitch-virtualenv aliases docker docker-compose dotenv gitignore iterm2 macos npm nvm zsh-autosuggestions)

# Aliases
alias lg='lazygit'
alias gp='git push'
alias gf='git pull'
alias glo="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias ls='lsd'
alias ll='ls -l'
alias so='source ~/.zshrc'
alias gopen='open "$(git remote get-url origin | sed "s/\.git$//")"'

# Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"
