function git_remove_tag() {
    if [ -n "$1" ]
    then
        git tag -d "$1"
        git push origin :refs/tags/"$1"
    fi
}

# The rest of my fun git aliases
alias g='git'
alias gd='git diff'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gdc="git diff --cached"
alias gdm="git diff master"
alias gdms="git diff master --stat"
alias gbav="git branch -avv --sort=committerdate"
alias gblv="git branch -lvv --sort=committerdate"
alias mybr="git branch -l | grep dj"
alias gf="git fetch"
alias gco="git checkout"
#alias gcom="git checkout master"
alias gcom="echo 'use gcm instead so that gcol works :-)'"
alias gcol="r gco"
alias gpuff="git pull --ff-only"
alias gss="git stash save"
alias gsp="git stash pop"
alias gsdrop="git stash drop"
alias gam="git commit --amend"
#alias gga="git grep <regexp> $(git rev-list --all)"
alias gga="git rev-list --all | xargs git grep"
#alias gpoh="git push -u origin HEAD"
alias gpoh="[[ \$(git rev-parse --abbrev-ref HEAD) == 'master' ]] && echo -e '\nThe gitmaster strikes again\!\n' || git push origin -u HEAD"
#alias gfpoh="git push --force origin HEAD"
alias gfpoh="[[ \$(git rev-parse --abbrev-ref HEAD) == 'master' ]] && echo -e '\nThe gitmaster strikes again\!\n' || git push origin --force HEAD"
# grep every tag. Nicer piped thru sort -V (version sort)
alias ggt="echo \$(git tag -l) | xargs git grep"
# Git Branch List Me
alias gblm="git branch -l 'dj*' | nl -w2"
alias gscp="git am --show-current-patch"
alias gdo="git diff origin/\$(git rev-parse --abbrev-ref HEAD)"
alias gssv="git stash show -v"
alias glog='git log --graph'