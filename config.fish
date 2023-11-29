if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
set PATH /Users/angelo/.nvm/versions/node/v16.16.0/bin  $PATH
set PATH /Users/angelo/Library/Application\ Support/JetBrains/Toolbox/scripts $PATH
set PATH /Users/angelo/go/bin $PATH

export ANDROID_HOME=/Users/angelo/Library/Android/sdk

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/angelo/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/angelo/Downloads/google-cloud-sdk/path.fish.inc'; end

set -xg PYTHONPATH /usr/bin/python3 $PYTHONPATH 


alias nr="npm run"

function gc
  git commit -am $argv
end


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/angelo/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# pnpm
set -gx PNPM_HOME "/Users/angelo/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias br "bun run"