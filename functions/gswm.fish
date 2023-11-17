function gswm --wraps='git switch main; and git pull' --description 'alias gswm git switch main; and git pull'
  git switch main; and git pull $argv; 
end
