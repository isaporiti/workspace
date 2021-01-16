autoload -Uz vcs_info 
precmd() { vcs_info }

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

RPROMPT=\$vcs_info_msg_0_

PROMPT="%n %F{green}%~ %f"

alias ll="ls -la"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ignaciosaporiti/.sdkman"
[[ -s "/Users/ignaciosaporiti/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ignaciosaporiti/.sdkman/bin/sdkman-init.sh"
