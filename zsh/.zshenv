# asdf
source $HOME/.asdf/asdf.sh

# ssh & gpg
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# snap
export PATH="$PATH:/var/lib/snapd/snap/bin" 

# golang
export GOPATH="${HOME}/go"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:${HOME}/go/bin"

# terraform
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="$HOME/workspace/ops/gitlab-com/gitlab-com-infrastructure/bin:$PATH"
