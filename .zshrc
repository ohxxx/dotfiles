# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
#****************************************#
#                                        #
#                Oh My ZSH               #
#                                        #
#****************************************#
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH theme：https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
# Disable warning about insecure completion-dependent directories
ZSH_DISABLE_COMPFIX="true"
# Useful oh-my-zsh plugins for Le Wagon bootcamps
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# Actually load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

#****************************************#
#                                        #
#                   NVM                  #
#                                        #
#****************************************#
# NVM directory settings
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

#****************************************#
#                                        #
#            NPM BINRAY CHINA            #
#                                        #
#****************************************#
# https://github.com/cnpm/binary-mirror-config/blob/master/package.json#L48
export NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export NVM_NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export PHANTOMJS_CDNURL="https://cdn.npmmirror.com/binaries/phantomjs"
export CHROMEDRIVER_CDNURL="https://cdn.npmmirror.com/binaries/chromedriver"
export OPERADRIVER_CDNURL="https://cdn.npmmirror.com/binaries/operadriver"
export ELECTRON_MIRROR="https://cdn.npmmirror.com/binaries/electron/"
export ELECTRON_BUILDER_BINARIES_MIRROR="https://cdn.npmmirror.com/binaries/electron-builder-binaries/"
export SASS_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-sass"
export SWC_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-swc"
export NWJS_URLBASE="https://cdn.npmmirror.com/binaries/nwjs/v"
export PUPPETEER_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries"
export SENTRYCLI_CDNURL="https://cdn.npmmirror.com/binaries/sentry-cli"
export SAUCECTL_INSTALL_BINARY_MIRROR="https://cdn.npmmirror.com/binaries/saucectl"
export npm_config_sharp_binary_host="https://cdn.npmmirror.com/binaries/sharp"
export npm_config_sharp_libvips_binary_host="https://cdn.npmmirror.com/binaries/sharp-libvips"
export npm_config_robotjs_binary_host="https://cdn.npmmirror.com/binaries/robotj"

#****************************************#
#                                        #
#                  ALIAS                 #
#                                        #
#****************************************#
alias czsh='code ~/.zshrc'
alias szsh='source ~/.zshrc'
# Set mirror source
alias nmn='nrm use npm'
alias nmy='nrm use yarn'
alias nmtb='nrm use taobao'
alias nmtx='nrm use tencent'
alias nmconf='npm config get registry'
# Development configuration
alias i='ni'
alias io='ni --prefer-offline'
alias ui='nun'
alias d='nr dev'
alias s='nr start'
alias b='nr build'
alias t='nr test'
alias tu='nr test -u'
alias de='nr electron:dev'
alias run='esno'
alias rmn='rm -rf node_modules'
alias c='code .'
alias tplts="degit git@github.com:ohxxx/ts-tmpl.git --force"
alias tplvsc="degit git@github.com:ohxxx/vscode-ext-tmpl.git --force"
alias nvite="pnpm create vite"
alias numi="pnpm create @umijs/umi-app"
# Directory
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias o="open ."
alias srct="treer -d src -e ./result.txt -i '/node_modules|.git|.umi|.umi-production|.DS_Store/'"
alias allt="treer -e ./result.txt -i '/node_modules|.git|.umi|.umi-production|.DS_Store/'"
# Git
alias -s git="git clone --depth 1"
alias all_authors="git log --all --format='%aN <%cE>' | sort -u"
# Launch applications
alias chrome='open -a "/Applications/Google Chrome.app" --args --force-renderer-accessibility'
# Network proxy
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
# Npm proxy
alias open_npmproxy="npm config set proxy=http://127.0.0.1:7890"
alias close_npmproxy="npm config delete proxy"

#****************************************#
#                                        #
#                commands                #
#                                        #
#****************************************#
# Startup project
function serve() {
  live-server $1
}
# Update gitignore
function ign() {
  rm -rf .gitignore
  touch .gitignore
  echo "
# Ide
*.DS_Store
.idea

# Logs
logs
*.log
pnpm-debug.log*
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Dependency directories
node_modules

# Build
dist
  ">>.gitignore
}
# Update tsconfig
function tsconf() {
  rm -rf tsconfig.json
  touch tsconfig.json
  echo '...' >>tsconfig.json
}
# Create directory
function dir() {
  mkdir $1 && cd $1
}
# Delete Files
function del() {
  rm -rf $1
}
# Citation Template
function tpl() {
  degit $1 --force
}
# Go to Dir
function gt() {
  if [[ $1 == "" || $1 == "-l" || $1 == "-c" ]]; then
    echo $($HOME/go/bin/gt $@)
  else
    builtin cd "$($HOME/go/bin/gt $@)"
  fi
}
#****************************************#
#                                        #
#                   Go                   #
#                                        #
#****************************************#
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#****************************************#
#                                        #
#                   Bun                  #
#                                        #
#****************************************#
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
