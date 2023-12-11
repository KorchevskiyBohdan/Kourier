#!/bin/bash

checkAuth() {
echo ""
echo -e "${f_green}${f_enable_bold}Check the configuration that will appear below!${f_disable_bold}${f_disable_color}"
echo ""
INFO_ACTIVE_PROJ_GC=$(gcloud config get-value project  2>/dev/null)
echo -e "${f_yellow}gcloud Project ${f_disable_color}: ${INFO_ACTIVE_PROJ_GC}"
echo -e "${f_yellow}kubectl Context${f_disable_color}: $(kubectl config current-context)"
echo -e "${f_yellow}Helm releases ${f_disable_color}: "
echo ""
helm ls
echo ""
echo -e "${f_enable_bold}Press any key to continue: ${f_disable_bold}"
echo ""
read -s -n 1
echo -e "${f_green}>>> Authentication to '$KN_GC_PROJ_NAME' successfully completed!${f_disable_color}"    
}

