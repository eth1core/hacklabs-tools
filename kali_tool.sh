# ==============================================================================
# Título: HackLabs Tools
# Descripción: Herramienta de gestión y listado de utilidades de hacking
# Autor: @eth1core
# Versión: 1.0.0
# ==============================================================================

# --- Colores ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# --- Variables de Idioma / Language Variables ---
LANG_CHOICE=""

# Textos / Texts
TXT_BANNER_DESC=""
TXT_BANNER_CREATED=""
TXT_BANNER_LEGAL_1=""
TXT_BANNER_LEGAL_2=""
TXT_BANNER_LEGAL_3=""
TXT_ROOT_WARN=""
TXT_PAUSE=""
TXT_SHOW_TOOLS_TITLE=""
TXT_TOOL_HEADER=""
TXT_STATUS_HEADER=""
TXT_INSTALLED=""
TXT_NOT_INSTALLED=""
TXT_MENU_TITLE=""
TXT_OPT_TOOLS=""
TXT_OPT_INFO=""
TXT_OPT_EXIT=""
TXT_EXIT_MSG=""
TXT_INVALID_OPT=""
TXT_INFO_TITLE=""
TXT_INFO_DESC=""

# Categorías / Categories
TXT_CAT_OSINT=""
TXT_CAT_WIFI=""
TXT_CAT_IPCAMERA=""
TXT_CAT_BRUTE=""
TXT_CAT_DDOS=""
TXT_CAT_IPLOGGER=""
TXT_CAT_PHISHING=""
TXT_CAT_BOMBERS=""
TXT_CAT_DISCORD=""
TXT_CAT_OTHERS=""
TXT_CAT_INSTALLED=""
TXT_CAT_EXIT=""

TXT_MOD_COMING_SOON=""

# --- Selección de Idioma / Language Selection ---
select_language() {
    clear
    echo -e "${CYAN}Select Language / Seleccione Idioma:${NC}"
    echo "1) Español"
    echo "2) English"
    echo ""
    read -p "> " lang_opt

    case $lang_opt in
        1)
            LANG_CHOICE="ES"
            TXT_BANNER_DESC="Herramienta de gestión y listado de utilidades de hacking"
            TXT_BANNER_CREATED="Creado por @eth1core"
            TXT_BANNER_LEGAL_1="[!] AVISO LEGAL: El uso ilegal de estas herramientas está"
            TXT_BANNER_LEGAL_2="    totalmente injustificado. Este software es únicamente para"
            TXT_BANNER_LEGAL_3="    fines educativos y pruebas autorizadas."
            TXT_ROOT_WARN="[!] Esta herramienta requiere permisos de root para algunas funciones."
            TXT_PAUSE="Presione Enter para continuar..."
            TXT_SHOW_TOOLS_TITLE="--- Herramientas Disponibles en el Sistema (Comunes) ---"
            TXT_TOOL_HEADER="Herramienta"
            TXT_STATUS_HEADER="Estado"
            TXT_INSTALLED="Instalado"
            TXT_NOT_INSTALLED="No Instalado"
            TXT_MENU_TITLE="Seleccione una categoría:"
            TXT_OPT_TOOLS="Ver Herramientas Instaladas"
            TXT_OPT_INFO="Información sobre HackLabs"
            TXT_OPT_EXIT="Salir"
            TXT_EXIT_MSG="Saliendo... Happy Hacking!"
            TXT_INVALID_OPT="[!] Opción inválida."
            TXT_INFO_TITLE="[*] HackLabs Tools v1.0"
            TXT_INFO_DESC="Una recopilación de utilidades para prueba de seguridad."
            TXT_MOD_COMING_SOON="Proximamente..."
            
            TXT_CAT_OSINT="OSINT"
            TXT_CAT_WIFI="WIFI HACKING"
            TXT_CAT_IPCAMERA="IPCAMERA HACKING"
            TXT_CAT_BRUTE="FUERZA BRUTA"
            TXT_CAT_DDOS="DDos"
            TXT_CAT_IPLOGGER="Ip Loggers"
            TXT_CAT_PHISHING="Phising"
            TXT_CAT_BOMBERS="Sms & Mail Bombers"
            TXT_CAT_DISCORD="Discord Tools"
            TXT_CAT_OTHERS="Otros & Others"
            TXT_CAT_INSTALLED="Ver Herramientas Instaladas"
            TXT_CAT_EXIT="Salir"
            ;;
        2)
            LANG_CHOICE="EN"
            TXT_BANNER_DESC="Hacking utilities management and listing tool"
            TXT_BANNER_CREATED="Created By @eth1core"
            TXT_BANNER_LEGAL_1="[!] LEGAL NOTICE: Illegal use of these tools is"
            TXT_BANNER_LEGAL_2="    totally unjustified. This software is only for"
            TXT_BANNER_LEGAL_3="    educational purposes and authorized testing."
            TXT_ROOT_WARN="[!] This tool requires root permissions for some functions."
            TXT_PAUSE="Press Enter to continue..."
            TXT_SHOW_TOOLS_TITLE="--- Tools Available on System (Common) ---"
            TXT_TOOL_HEADER="Tool"
            TXT_STATUS_HEADER="Status"
            TXT_INSTALLED="Installed"
            TXT_NOT_INSTALLED="Not Installed"
            TXT_MENU_TITLE="Select a category:"
            TXT_OPT_TOOLS="View Installed Tools"
            TXT_OPT_INFO="About HackLabs"
            TXT_OPT_EXIT="Exit"
            TXT_EXIT_MSG="Exiting... Happy Hacking!"
            TXT_INVALID_OPT="[!] Invalid option."
            TXT_INFO_TITLE="[*] HackLabs Tools v1.0"
            TXT_INFO_DESC="A collection of utilities for security testing."
            TXT_MOD_COMING_SOON="Coming soon..."

            TXT_CAT_OSINT="OSINT"
            TXT_CAT_WIFI="WIFI HACKING"
            TXT_CAT_IPCAMERA="IPCAMERA HACKING"
            TXT_CAT_BRUTE="BRUTE FORCE"
            TXT_CAT_DDOS="DDoS"
            TXT_CAT_IPLOGGER="Ip Loggers"
            TXT_CAT_PHISHING="Phishing"
            TXT_CAT_BOMBERS="Sms & Mail Bombers"
            TXT_CAT_DISCORD="Discord Tools"
            TXT_CAT_OTHERS="Others"
            TXT_CAT_INSTALLED="View Installed Tools"
            TXT_CAT_EXIT="Exit"
            ;;
        *)
            echo -e "${RED}Invalid Option / Opción Inválida${NC}"
            sleep 1
            select_language
            ;;
    esac
}

# --- Funciones Auxiliares ---

# Función para imprimir banner
banner() {
    clear
    echo -e "${PURPLE}"
    echo "  _   _            _    _       _          _______          _ "
    echo " | | | |          | |  | |     | |        |__   __|        | |"
    echo " | |_| | __ _  ___| | _| | __ _| |__  ___    | | ___   ___ | |___"
    echo " |  _  |/ _\` |/ __| |/ / |/ _\` | '_ \/ __|   | |/ _ \ / _ \| / __|"
    echo " | | | | (_| | (__|   <| | (_| | |_) \__ \   | | (_) | (_) | \__ \\"
    echo " \_| |_/\__,_|\___|_|\_\_|\__,_|_.__/|___/   |_|\___/ \___/|_|___/"
    echo -e "${NC}"
    echo -e "${CYAN}             $TXT_BANNER_CREATED${NC}"
    echo "====================================================================="
    echo -e "${RED}$TXT_BANNER_LEGAL_1"
    echo -e "$TXT_BANNER_LEGAL_2"
    echo -e "$TXT_BANNER_LEGAL_3${NC}"
    echo "====================================================================="
    echo ""
}

# Verificar usuario root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "${RED}$TXT_ROOT_WARN${NC}"
        # No salimos forzosamente, solo avisamos, a menos que sea crítico
    fi
}

# Pausa para leer
pause() {
    read -p "$TXT_PAUSE" fackEnter
}

# Listar herramientas
show_tools() {
    echo -e "${YELLOW}$TXT_SHOW_TOOLS_TITLE${NC}"
    
    tools=("nmap" "metasploit" "wireshark" "burpsuite" "sqlmap" "hydra" "aircrack-ng" "john" "nikto" "netcat")
    
    echo -e "${BLUE}%-20s %-20s${NC}" "$TXT_TOOL_HEADER" "$TXT_STATUS_HEADER"
    echo "----------------------------------------"
    
    for tool in "${tools[@]}"; do
        if command -v $tool &> /dev/null; then
            echo -e "%-20s ${GREEN}$TXT_INSTALLED${NC}" "$tool"
        else
            echo -e "%-20s ${RED}$TXT_NOT_INSTALLED${NC}" "$tool"
        fi
    done
    echo ""
    pause
}

# --- Menús de Categorías (Placeholders) ---

menu_osint() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_OSINT - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_wifi() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_WIFI - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_ipcamera() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_IPCAMERA - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_bruteforce() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_BRUTE - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_ddos() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_DDOS - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_iploggers() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_IPLOGGER - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_phishing() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_PHISHING - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_bombers() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_BOMBERS - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_discord() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_DISCORD - $TXT_MOD_COMING_SOON${NC}"
    pause
}

menu_others() {
    echo -e "\n${BLUE}[*] Módulo $TXT_CAT_OTHERS - $TXT_MOD_COMING_SOON${NC}"
    pause
}

# --- Menú Principal ---
main_menu() {
    while true; do
        banner
        echo -e "${GREEN}$TXT_MENU_TITLE${NC}"
        echo "1)  $TXT_CAT_OSINT"
        echo "2)  $TXT_CAT_WIFI"
        echo "3)  $TXT_CAT_IPCAMERA"
        echo "4)  $TXT_CAT_BRUTE"
        echo "5)  $TXT_CAT_DDOS"
        echo "6)  $TXT_CAT_IPLOGGER"
        echo "7)  $TXT_CAT_PHISHING"
        echo "8)  $TXT_CAT_BOMBERS"
        echo "9)  $TXT_CAT_DISCORD"
        echo "10) $TXT_CAT_OTHERS"
        echo "11) $TXT_CAT_INSTALLED"
        echo "00) $TXT_CAT_EXIT"
        echo ""
        read -p "HackLabs > " choice

        case $choice in
            1) menu_osint ;;
            2) menu_wifi ;;
            3) menu_ipcamera ;;
            4) menu_bruteforce ;;
            5) menu_ddos ;;
            6) menu_iploggers ;;
            7) menu_phishing ;;
            8) menu_bombers ;;
            9) menu_discord ;;
            10) menu_others ;;
            11) show_tools ;;
            00)
                echo -e "${YELLOW}$TXT_EXIT_MSG${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}$TXT_INVALID_OPT${NC}"
                sleep 1
                ;;
        esac
    done
}

# --- Ejecución ---
# check_root # Opcional: descomentar si se requiere forzar root
select_language
main_menu
