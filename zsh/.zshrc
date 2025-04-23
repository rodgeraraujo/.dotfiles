export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/.zshrc"

export PNPM_HOME="/Users/rogerioaraujo/Library/pnpm/pnpm"
export HOME_BREW_HOME="/opt/homebrew/opt/openssl@3/bin"
# export FLUTTER_HOME="/Users/rogerioaraujo/workspace/tools/flutter/bin"
export FLUTTER_HOME="/Users/rogerioaraujo/fvm/default/bin"
export GEM_HOME=$HOME/.gem/bin

export PATH="$PNPM_HOME:$HOME_BREW_HOME:$FLUTTER_HOME:$GEM_HOME:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load Angular CLI autocompletion.
if [ -x "$(command -v ng)" ]; then
  source <(ng completion script)
fi
export PATH="/Users/rogerioaraujo/.rbenv/shims/ruby:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$HOME/.koyeb/bin:$PATH



export PITACO_PROTOS_DIR=/Users/rogerioaraujo/workspace/projects/pitaco/platform/protos
export MOBILE_PROTOS_DIR=/Users/rogerioaraujo/workspace/projects/pitaco/front-end/mobile/flutter_libs/core/lib/betting/proto
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:/Users/rogerioaraujo/workspace/projects/pitaco

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/rogerioaraujo/.dart-cli-completion/zsh-config.zsh ]] && . /Users/rogerioaraujo/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
