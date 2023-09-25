
alias tfl="terraform login"
alias tft="terraform taint"
alias tfa="terraform apply -auto-approve"
alias tp="terraform plan"
alias tf="terraform"

grepi() {
        grepr --include \*.tf $1 .
}


alias tfgrep="grepi"

alias h="helm"

alias hl="helm list --all-namespaces --all"
alias hu="helm uninstall"
alias civ="circleci config validate"

alias ls="ls -la"
alias diff='colordiff'

alias hosts='sudo vi /etc/hosts'
alias netstat='netstat -tulanp'
alias root='sudo -i'
alias su='sudo -i'
alias df='df -H'
alias du='du -ch'
alias untar='tar -zxvf '
alias wget='wget -c '
alias mkdir='mkdir -pv '
alias pip='pip3'
alias py='python3'

alias tel="cd ~/downloads"
alias .ssh="cd ~/.ssh"

alias .="cd .."
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

forvii () {
  for file in $(cat $1)
  do
    vi  $file
  done
}

alias forvi='forvii'


oldf() {
  if [[ $1 != *_old ]]; then
     mv  $1 $1_old
  else
     name=$(echo $1| sed 's/_old//')
     mv $1 $name
  fi
}

alias old='oldf'


backf() {
  if [[ $1 != *_back ]]; then
     cp  $1 $1_back
  else
     name=$(echo $1| sed 's/_back//')
     mv $1 $name
  fi
}

alias back='backf'
## integrate branch 1 to branch 2
gitint() {
        gch $1 && gaa && gf && gch $2 && gm $1 && gf && gch $1

}


alias gi='gitint'

gitall() {
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}

alias gf='gitall'
alias gk="gitk -all -reflog"
alias gd='git diff'
alias gba='git branch -v -a'
alias gl="git log --reflog --color --all --graph -p"
alias gaf="gaa && gf" 

## stash 
alias gs="git stash"
alias gsp="git stash pop"

## checkouts
alias gc="git checkout"
alias gcdev="git checkout dev"
alias gcdata="git checkout data"
alias gcprod="git checkout prod"
alias gchdev="git checkout dev"
alias gchdata="git checkout data"
alias gchprod="git checkout prod"
alias gdev="git checkout dev"
alias gdata="git checkout data"
alias gprod="git checkout prod"

# merges
 gitm() {
     git merge $1 -m 'merge'
}
alias gm="gitm"
alias gmdev="git merge dev"
alias gmdata="git merge data"
alias gmprod="git merge prod"
alias gmprd="git merge prod"

# git branch
alias gbr='git branch'
alias gitbr='git branch'
gitb() {
     git branch $1 && git checkout $1
}

alias gb='gitb'

# general git
alias g="git"
alias gst="git stash"
alias gch="git checkout"
alias gpsh='git push'
alias gpush='git push'
alias gpll='git pull'
alias gpull='git pull'
alias gaa="git add -A"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gclone="git clone"
alias gcl="git clone"
alias gtpr="ghpr"


alias download='cd ~/Downloads'
alias bureau='cd ~/Desktop'
alias desktop='cd ~/Desktop'

gitback() {
  git -C $1 add . 
  git -C $1 commit -m upd 
  git -C $1 push 

}
alias gback='gitback'

alias bvimrc="cp ~/.vimrc ~/backup_vimrc  &&gback ~/backup_vimrc"


alias k="kubectl"

#kuberantes
alias kdns="kubectl describe ns"
alias kdpod="kubectl describe pod "
alias kdjob="kubectl describe job "
alias kding="kubectl describe ingress"
alias kdser="kubectl describe service"
alias kddep="kubectl describe deployment  "
alias kdnode="kubectl describe node"
alias kdrs="kubectl describe rs"
alias kdss="kubectl describe  statefulset"
alias kd="kubectl describe  "
alias ktpod="k top pod --all-namespaces"
alias ktnode="k top node"

kex() {
        kubectl exec --stdin --tty -n $1 $2   -- /bin/sh
}
alias kexec="kex"


kenv() {
  kubectl exec -it -n $1 $2 -- env
}

alias kgenv="kenv"

alias ktop="k top pod --all-namespaces"

alias kg="kubectl get"
alias kgss="kubectl get statefulset --all-namespaces"
alias kgns="kubectl get ns --all-namespaces"
alias kgjob="kubectl get job  --all-namespaces"
alias kging="kubectl get ingress  --all-namespaces"
alias kgser="kubectl get service  --all-namespaces"
alias kgdep="kubectl get deployment  --all-namespaces"
alias kgev="kubectl get events  --all-namespaces"
alias kgnode="kubectl get nodes"
alias kgrs="kubectl get rs --all-namespaces"
alias kl="kubectl logs -f -n "
kip() {
 kubectl describe pod -n $1 $2 | grep IP | sed -E 's/IP:[[:space:]]+//'
}

alias kgip='kip'

alias kdebug="kubectl run -i --rm --tty debug --image=busybox --pod-running-timeout=10m0s --attach --restart=Never --namespace kube-system -- sh"
alias kcurl="kubectl run curlpod --image=curlimages/curl -i --tty --pod-running-timeout=10m0s --attach --restart=Never --namespace kube-system -- sh"



alias rs='kubectl get rs   --all-namespaces'
alias srv='kubectl get services   --all-namespaces'
alias igr='kubectl get ingress   --all-namespaces'
alias wpod="watch -n1 'kubectl get pods   --all-namespaces'"
alias pods="watch -n1 'kubectl get pods   --all-namespaces'"
alias pod="kubectl get pods   --all-namespaces"

alias clear="clear && reset"
alias reset="clear && reset"
alias res="clear && reset"
alias clear="clear && reset"

# aws config 
alias ci="vi .circleci/config.yml"
alias awsc="vi ~/.aws/credentials"
alias vimc="vi ~/.vimrc"
alias vimrc="vi ~/.vimrc"
alias zsh="vi ~/.zshrc"

alias sshc="vi ~/.ssh/config"
alias awsc="vi ~/.aws/credentials"
alias monip="curl -s ifconfig.me"
alias ouip="whois $(monip) | grep country"
alias cpr="cp -r "
alias diff="colordiff"
gr() {
  grep -r  $1  .

}
alias gback='gitback'
alias bi='brew install'
alias grepr='gr'
alias ls="ls -a"
alias net="ping 8.8.8.8"
alias rel="source ~/.zshrc"
alias sshr="ssh-keygen -R"
alias vi="vim +startinsert"
alias v="vim +startinsert"

rep() {
    for i in $1* ; do sed -i '' -e   's/'$2'/'$3'/g' $i  && echo $i; done
}

alias repall='rep'

#usage : sedall mah\*  s/leila/chems/g
seda() {
 find . -name $1  | xargs  sed  -i "" $2
}

alias sedall='seda'


kdpod_fn() {
 kdpod $1 -n $(pod | grep $1  |awk '{print $1}')
}

alias kdp='kdpod_fn'

klp_fn() {
 kl $1 -n $(pod | grep $1  |awk '{print $1}')
}

alias klp='klp_fn'


upl_fnc() {
aws lambda update-function-code\
    --function-name $1\
    --publish \
    --zip-file fileb://$2
}
alias yi='sudo yum install'
alias texit='tmux detach'


alias ul='upl_fnc'


