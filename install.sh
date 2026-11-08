#!/usr/bin/env bash
set -euo pipefail

# Копирует конфиги из репозитория в ~/.config
# Использование: ./install.sh [--backup]

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.config"
DEST="${XDG_CONFIG_HOME:-$HOME/.config}"

if [[ ! -d "$SRC" ]]; then
    echo "Не найдена папка .config рядом со скриптом" >&2
    exit 1
fi

if [[ "${1:-}" == "--backup" ]]; then
    BACKUP="$HOME/.config-backup-$(date +%Y%m%d-%H%M)"
    echo "Бэкап текущего ~/.config -> $BACKUP"
    cp -a "$DEST" "$BACKUP"
fi

echo "Копирую конфиги в $DEST"
mkdir -p "$DEST"
cp -rv "$SRC/." "$DEST/"

echo "Готово. Перезапустите niri/сессию, чтобы применить изменения."
