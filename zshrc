# Path to your oh-my-zsh installation.
export ZSH="/Users/dannyb/.oh-my-zsh"

alias openzshrc="open -a /Applications/Visual\ Studio\ Code.app ~/.zshrc"

#NPM
alias resetnpm="rm package-lock.json && rm -rf node_modules && npm i"
alias resetyarn="rm yarn.lock && rm -rf node_modules && yarn"
alias npmpublic="npm config set registry https://registry.npmjs.org/ && npm config get registry"

#git
function randomstr(){
  cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1
}
function auto-push-pr() {
  if [ "$#" -ne 1 ] 
  then
    echo "commit message required"
    return 1
  fi

  local commit_message=$1
  local branch_name=$(randomstr);
  
  git pull --rebase --autostash && git checkout -b $branch_name && git add --all && git commit -m "$commit_message #automerge" && git push -u origin $branch_name && git checkout master && git branch -D $branch_name
}

alias gfpr="git fetch && git pull --rebase --autostash"

#chrome
alias chromecors="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir='/tmp/chrome_dev_test' --disable-web-security"
