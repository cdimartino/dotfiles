# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gsb='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grim='git rebase -i master'
alias grima='git rebase -i main'
alias gric='git rebase --continue'
alias gsha='git shamend'
alias gsf='git add . && git shamend && git pf'
alias gfu='git commit --fixup'
alias gcm='git commit -m'

gps() {
  git push origin `git rev-parse --abbrev-ref HEAD`:staging
}

gpp() {
  git push origin `git rev-parse --abbrev-ref HEAD`:production
}

fbr() {
  git fetch
  local branches branch
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +s +m -e) &&
  git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

fbl() {
  git fetch
  local branches branch
  branches=$(git branch -a) &&
  echo "$branches" | fzf +s +m -e
}

alias gitcleanshow='git branch --merged master | grep -v "master"'
alias gitclean='gitcleanshow | xargs -n 1 git branch -d'
alias fix='git commit --fixup'
