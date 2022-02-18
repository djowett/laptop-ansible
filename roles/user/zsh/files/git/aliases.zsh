function git_remove_tag() {
    if [ -n "$1" ]
    then
        git tag -d "$1"
        git push origin :refs/tags/"$1"
    fi
}

function gbdone () {
  git branch -m ${1} DONE/${1}
  # git branch -m ${1} DONE/${1##dj/}
}

function gbold () {
  git branch -m ${1} OLD/${1}
  # git branch -m ${1} OLD/${1##dj/}
}

# The rest of my fun git aliases
alias g='git'
alias gd='git diff'
alias gdst='git diff --stat'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gdc="git diff --cached"
alias gdm="git diff master"
alias gdms="git diff master --stat"
alias gds="git diff staging"
alias gdss="git diff staging --stat"
alias gbav="git branch -avv --sort=committerdate | grep -Ev 'OLD|DONE'"
alias gblv="git branch -lvv --sort=committerdate | grep -Ev 'OLD|DONE'"
alias mybr="git branch -l | grep dj"
alias gf="git fetch"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcom="echo 'use gcm instead so that gcol works :-)'"
alias gcs="git checkout staging"
alias gcol="r gco"
alias gpuff="git pull --ff-only"
alias gss="git stash save"
alias gsp="git stash pop"
alias gsdrop="git stash drop"
alias gam="git commit --amend"
#alias gga="git grep <regexp> $(git rev-list --all)"
alias gga="git rev-list --all | xargs git grep"
#alias gpoh="git push -u origin HEAD"
alias gpoh="[[ \$(git rev-parse --abbrev-ref HEAD) == 'staging' ]] && echo -e '\nThe gitmaster strikes again\!\n' || git push origin -u HEAD"
#alias gfpoh="git push --force origin HEAD"
alias gfpoh="[[ \$(git rev-parse --abbrev-ref HEAD) == 'staging' ]] && echo -e '\nThe gitmaster strikes again\!\n' || git push origin --force HEAD"
# grep every tag. Nicer piped thru sort -V (version sort)
alias ggt="echo \$(git tag -l) | xargs git grep"
# Git Branch List Me
alias gblm="git branch -l 'dj*' | nl -w2"
alias gscp="git am --show-current-patch"
alias gdo="git diff origin/\$(git rev-parse --abbrev-ref HEAD)"
alias gssv="git stash show -v"
alias glog='git log --graph'
