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

