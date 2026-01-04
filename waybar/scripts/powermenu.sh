#!/bin/bash
# Example for Rofi/Wofi
rofi -dmenu -i -p "Power Menu" \
     -theme ~/.config/waybar/themes/your-theme-name \
     <<< "Shutdown\nReboot\nLogout\nHibernate\nSleep" | {
    read -r cmd
    case "$cmd" in
        Shutdown) systemctl poweroff ;;
        Reboot) systemctl reboot ;;
        Logout) swaymsg exit ;; # Or hyprctl dispatch exit for Hyprland
        Hibernate) systemctl hibernate ;;
        Sleep) systemctl suspend ;;
    esac
}
