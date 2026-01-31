# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] \
  && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

source "$(brew --prefix)/etc/profile.d/z.sh"

# Local secrets
[[ -f "${HOME}/.config/secrets/env.zsh" ]] && source "${HOME}/.config/secrets/env.zsh"

export EDITOR='cursor'
export PATH="$HOME/.bun/bin:$HOME/.local/bin:$PATH"

# Only change directory if this is an interactive login shell
if [[ -o login && $PWD == $HOME ]]; then
	cd ~/Developer
fi

###############################################################################
# Prompt (Starship)
###############################################################################

# Assumes starship is installed via brew
if command -v starship >/dev/null 2>&1; then
	eval "$(starship init zsh)"
fi

###############################################################################
# Completion / shell behavior
###############################################################################

# Native zsh completion (no OMZ)
autoload -Uz compinit
compinit -C

setopt auto_cd
setopt extended_glob
setopt no_beep

###############################################################################
# DotCD
###############################################################################

function _dotcd() {
	local -i depth=$(( ${#1} - 1 ))
	local path
	path="$(printf '../%.0s' {1..$depth})"
	cd "${path%/}"
}

for dots in .. ... .... .....; do
	function "$dots"() { _dotcd "$0"; }
done

###############################################################################
# Aliases
###############################################################################

alias c="cursor"
alias ip="curl http://ipecho.net/plain; echo"

alias ls="lsd"
alias ll="ls -la"
alias la="ls -a"
alias l="ls"
alias t="tree -L"

alias mkcd='foo(){ mkdir -p "$1"; cd "$1"; }; foo'

alias gac="git add . && git commit -m"
alias gbr="git branch"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gl="git pull"
alias glo="git log --oneline"
alias gp="git push"
alias gs="git status"

###############################################################################
# NVM lazy-loading (unchanged, OMZ-free)
###############################################################################

export NVM_DIR="$HOME/.nvm"

load-nvm() {
	# remove lazy-load stubs if they exist
	for cmd in node npm npx nvm corepack yarn pnpm; do
		if typeset -f "$cmd" >/dev/null 2>&1; then
			unset -f "$cmd"
		fi
	done

	rehash

	[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] \
		&& . "/opt/homebrew/opt/nvm/nvm.sh"
	[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] \
		&& . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

	rehash
}

for cmd in node npm npx nvm corepack yarn pnpm; do
	eval "$cmd() { load-nvm; $cmd \"\$@\"; }"
done

###############################################################################
# Atuin
###############################################################################

[[ -o interactive ]] && eval "$(atuin init zsh)"

###############################################################################
# Kiro CLI post block. Keep at the bottom of this file.
###############################################################################

[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] \
  && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

# bun completions
[ -s "/Users/jacobherper/.bun/_bun" ] && source "/Users/jacobherper/.bun/_bun"
