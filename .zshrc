# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

#******************************************
#                                         #
#               Oh My ZSH                 #
#                                         #
#*****************************************/
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH theme：https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
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

#******************************************
#                                         #
#                  NVM                    #
#                                         #
#*****************************************/
# NVM directory settings
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

#******************************************
#                                         #
#            NPM BINRAY CHINA             #
#                                         #
#*****************************************/
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
#******************************************
#                                         #
#                  ALIAS                  #
#                                         #
#*****************************************/
alias gh='cd ~ && cd Desktop/github/'
alias os='cd ~ && cd Desktop/opensource/'
alias czsh='code ~/.zshrc'
alias szsh='source ~/.zshrc'
# Set mirror source
alias msnpm='nrm use npm'
alias msyarn='nrm use yarn'
alias mstb='nrm use taobao'
alias mstx='nrm use tencent'
alias msconf='npm config get registry'
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
alias tsd='npx tsd'
alias run='esno'
alias rn='rm -rf node_modules'
alias c='code .'

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
