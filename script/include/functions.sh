
showHeader()
{
    showInfo "--" none
    showSuccess $1 none
    showMuted $2 none
    showInfo "--" none

    echo ""
}

showFooter()
{
    echo ""
    
    showInfo "--" none
    showSuccess $1 none
    showInfo "--" none
}

showText()
{
    COLOR_BLUE='\e[0;34m'
    COLOR_GRAY='\e[0;30m'
    COLOR_GREEN='\e[0;32m'
    COLOR_RED='\e[0;31m'
    COLOR_YELLOW='\e[1;33m'
    COLOR_NC='\e[0m'

    case $1 in 
        "blue") COLOR=$COLOR_BLUE ;;
        "gray") COLOR=$COLOR_GRAY ;;
        "green") COLOR=$COLOR_GREEN ;;
        "red") COLOR=$COLOR_RED ;;
        "yellow") COLOR=$COLOR_YELLOW ;;
        *) COLOR=$COLOR_NC ;;
    esac

    case $3 in 
        "danger") ICON="✖" ;;
        "ok") ICON="✔" ;;
        "dot") ICON="●" ;;
        "hand") ICON="🖝" ;;
        "arrow") ICON="►" ;;
        *) ICON=" " ;;
    esac

    MESSAGE="$2"

    # substitui underscore por espaco
    MESSAGE=${MESSAGE//_/" "}

    if [[ "$MESSAGE" == "--" ]]; then
        MESSAGE="----------------------------------------------------------"
    fi

    echo -e "$COLOR $ICON $MESSAGE $COLOR_NC"
}

showError()
{
    ICON="danger"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText red $1 $ICON
}

showInfo()
{
    ICON="hand"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText blue $1 $ICON
}

showMuted()
{
    ICON="none"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText gray $1 $ICON
}

showSuccess()
{
    ICON="ok"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText green $1 $ICON
}

showWarning()
{
    ICON="dot"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText yellow $1 $ICON
}

showList()
{
    ICON="arrow"

    if [[ ! -z "$2" ]]; then
        ICON="$2"
    fi 

    showText none $1 $ICON
}
