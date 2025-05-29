#!/bin/bash
source "utils/helpers.sh"
source "utils/logger.sh"

# === UI HEADER ===
function show_header() {
  clear
  echo "=============================================="
  echo "             ADMIN DASHBOARD v1.0"
  echo "=============================================="
  printf "Welcome  %-10s  Date: %s\n" "$USER" "$(date '+%Y-%m-%d %H:%M:%S')"
  echo "----------------------------------------------"
}

# === MAIN MENU ===
function main_menu() {
  while true; do
    show_header
    echo "Select a module:"
    echo " [1] System Information"
    echo " [2] User Management"
    echo " [3] Process Management"
    echo " [4] Service Management"
    echo " [5] Network Management"
    echo " [6] Log Analysis"
    echo " [7] Backup Utility"
    echo " [8] System Update"
    echo " [9] Exit"
    echo "----------------------------------------------"
    read -rp "Enter choice [1-9]: " choice

    case "$choice" in
      1) bash "modules/sys_mgmt.sh" ;;
      2) bash "modules/user_mgmt.sh" ;;
      3) bash "modules/proc_mgmt.sh" ;;
      4) bash "modules/svc_mgmt.sh" ;;
      5) bash "modules/net_mgmt.sh" ;;
      6) bash "modules/log_mgmt.sh" ;;
      7) bash "modules/backup_mgmt.sh" ;;
      8) bash "modules/update_mgmt.sh" ;;
      9) echo -e "\nExiting..."; exit 0 ;;
      *) echo -e "\n[!] Invalid option. Try again."; sleep 1 ;;
    esac
  done
}

main_menu
