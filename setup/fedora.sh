#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

source "$SCRIPT_DIR/include/functions.sh"
source "$SCRIPT_DIR/include/gitconfig.sh"

showHeader "Fedora" "Configurando_para_desenvolvimento_c++"

#
# google chrome
#
showInfo "Verificando_Google_Chrome"
if [[ ! -f "/etc/yum.repos.d/google-chrome.repo" ]]; then

    sudo dnf config-manager --set-enabled google-chrome
    sudo dnf -y install google-chrome-stable

    showSuccess "OK" 
else
    showMuted "OK_-_Google_Chrome_já_está_instalado"
fi



#
# vscode
#
showInfo "Verificando_Visual_Studio_Code"
if [[ ! -f "/etc/yum.repos.d/vscode.repo" ]]; then

    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    dnf check-update

    showInfo "Verificando_extenções_para_c++"

    code --install-extension ms-vscode.cpptools-extension-pack
    code --install-extension ms-vscode.cmake-tools
    code --install-extension eamodio.gitlens

    sudo dnf -y install code fira-code-fonts

    showSuccess "OK" 
else
    showMuted "OK_-_Visual_Studio_Code_já_está_instalado"
fi

#
# zsh
#
showInfo "Verificando_Oh_My_Zsh"
if [[ ! -f "$HOME/.zshrc" ]]; then

    sudo dnf -y install zsh util-linux-user
    chsh -s $(which zsh)
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
    
    cat <<EOF >> ~/.zshrc
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
EOF

    source ~/.zshrc

    showSuccess "OK" 
else 
    showMuted "OK_-_Oh_My_Zsh_já_está_instalado" 
fi

#
# compiladores
#

# compilador de executáveis linux
showInfo "Verificando_compilador_GCC"
if ! command -v g++ &> /dev/null; then
    sudo dnf -y install gcc-c++

    showSuccess "OK" 
else
    showMuted "OK_-_O_GCC_já_está_instalado"
fi

# compilador de executáveis linux
showInfo "Verificando_compilador_Clang"
if ! command -v clang++ &> /dev/null; then
    sudo dnf -y install clang

    showSuccess "OK" 
else
    showMuted "OK_-_O_Clang_já_está_instalado"
fi

# compilador de executáveis windows
showInfo "Verificando_compilador_Mingw_GCC"
if ! command -v x86_64-w64-mingw32-g++ &> /dev/null; then
    sudo dnf -y install mingw64-gcc-c++

    showSuccess "OK" 
else
    showMuted "OK_-_O_Mingw_GCC_já_está_instalado"
fi

#
# builders
#
showInfo "Verificando_builder_CMake"
if ! command -v cmake &> /dev/null; then
    sudo dnf -y install cmake

    showSuccess "OK" 
else
    showMuted "OK_-_O_CMake_já_está_instalado"
fi

#
# git
# 
showInfo "Configurando_git_global_para_usuário_contato@ricardopedias.com.br" 
if [[ ! "$(git config --global user.email)" == "$GIT_EMAIL" ]]; then
    git config --global user.email "$GIT_EMAIL"
    git config --global user.name "$GIT_USERNAME"
    showSuccess "OK" 
else 
    showMuted "OK_-_Usuário_git_já_é_$GIT_EMAIL"
fi


#
# github ssh
#
if [[ ! -f "$HOME/.ssh/id_ed25519.pub" ]]; then
    showInfo "Gerando_chave_SSH" 
    ssh-keygen -t ed25519 -C "contato@ricardopedias.com.br"
    showSuccess "OK" 
else 
    showMuted "OK_-_Chave_SSH_já_foi_gerada_anteriormente" 
fi


showInfo "Copie_a_linha_abaixo_e_use_no_URL_https://github.com/settings/keys"
cat $HOME/.ssh/id_ed25519.pub


showFooter "Tudo_pronto_no_seu_Fedora"
