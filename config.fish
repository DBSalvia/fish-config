set -xg LSCOLORS gxBxhxDxfxhxhxhxhxcxcx
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

fundle plugin 'edc/bass'
fundle init

function nvm
  bass source ~/.nvm/nvm.sh ';' nvm $argv
end

nvm use current > /dev/null

function code
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end
