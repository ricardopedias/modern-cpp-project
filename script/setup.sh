#!/bin/bash
#
# script.sh - Preparação de sistemas para desenvolvimento C++
# 
# Este programa é uma ferramenta para preparar um sistema operacional suportado,
# instalando dependências e fazendo as configurações necessárias para programar
# na linguagem C e C++
# 
# Para saber mais, execute:
# script/setup.sh -h
# 

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

source "$SCRIPT_DIR/include/functions.sh"

OPTION_ALL="no"
OPTION_SYSTEM="none"
OPTION_RELEASE="none"
OPTION_CHROME="no"
OPTION_COMPILERS="no"
OPTION_CMAKE="no"
OPTION_GIT="no"
OPTION_SSH="no"
OPTION_VSCODE="no"
OPTION_XMAKE="no"
OPTION_ZSH="no"

if [[ "$@" == "" ]]; then
    showHelp
fi

EXIT_WITH_ERROR=1
EXIT_WITH_SUCCESS=0

PARAM_LIST=$(parseArgumentPairs $@)

for PAIR in $PARAM_LIST
do
    PARAM_KEY=$(pairKey $PAIR)
    PARAM_VALUE=$(pairValue $PAIR)

    case "$PARAM_KEY" in
        all) OPTION_ALL="yes" ;;
        a) OPTION_ALL="yes" ;;

        cmake) OPTION_XMAKE="yes" ;;

        compilers) OPTION_COMPILERS="yes" ;;

        git) OPTION_GIT="yes" ;;

        help) showHelp ;;
        h) showHelp ;;

        chrome) OPTION_CHROME="yes" ;;

        release) OPTION_RELEASE="$PARAM_VALUE" ;;
        r) OPTION_RELEASE="$PARAM_VALUE" ;;

        system) OPTION_SYSTEM="$PARAM_VALUE" ;;
        s) OPTION_SYSTEM="$PARAM_VALUE" ;;

        ssh) OPTION_SSH="yes" ;;

        vscode) OPTION_VSCODE="yes" ;;

        xmake) OPTION_XMAKE="yes" ;;
        
        zsh) OPTION_ZSH="yes" ;;

        *) showHelpShort "Opção inválida: $PARAM_KEY" && exit 1;;
    esac
done

if [[ "$OPTION_SYSTEM" == "none" ]]; then
    showHelpShort "Sistema não fornecido!"
fi

if [[ "$OPTION_RELEASE" == "none" ]]; then
    showHelpShort "Versão do sistema não fornecido"
fi

if [[ "$OPTION_SYSTEM" == "fedora" ]] && [[ "36,37,38" == *"$OPTION_RELEASE"* ]]; then
    SCRIPT_FILE="$SCRIPT_DIR/include/${OPTION_SYSTEM}_38/main.sh"
else
    SCRIPT_FILE="$SCRIPT_DIR/include/${OPTION_SYSTEM}_${OPTION_RELEASE//"."/""}/main.sh"
fi

if [[ ! -f "$SCRIPT_FILE" ]]; then
    showSection
    showError "${OPTION_SYSTEM^} ${OPTION_RELEASE} não é suportado!"
    showSupport
    exit $EXIT_WITH_ERROR
fi

showSection "Preparando o sistema ${OPTION_SYSTEM^} $OPTION_RELEASE"
showSection

source $SCRIPT_FILE

showSection "Tudo pronto!"
showSection

exit $EXIT_WITH_SUCCESS