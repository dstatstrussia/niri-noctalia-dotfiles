# niri × Noctalia dotfiles (CachyOS)

Мой рабочий набор конфигов для **CachyOS (Arch-based)** с тайловым Wayland-композитором **niri** и десктоп-шеллом **Noctalia** (Quickshell). Оформление — гибрид macOS × Linux: стеклянные панели, скругления, палитры в стиле macOS.

## Состав

```
.config/
├── niri/                 # niri — Wayland-композитор
│   ├── config.kdl        # точка входа (include модулей)
│   └── cfg/
│       ├── animation.kdl # анимации
│       ├── autostart.kdl # автозапуск
│       ├── display.kdl   # мониторы и масштабирование
│       ├── input.kdl     # клавиатура, тачпад, мышь
│       ├── keybinds.kdl  # горячие клавиши
│       ├── layout.kdl    # раскладка, отступы, границы
│       ├── misc.kdl      # прочие настройки
│       └── rules.kdl     # правила для окон
├── noctalia/             # Noctalia shell
│   ├── config.toml       # настройки шелла, панели, анимаций
│   └── palettes/         # цветовые палитры (Abyss-Cyan, macOS-*)
├── alacritty/            # терминал
│   ├── alacritty.toml
│   └── themes/noctalia.toml
├── fastfetch/            # вывод системной информации
│   └── config.jsonc
├── btop/                 # системный монитор (кастомные темы)
├── cachyos/              # конфиги CachyOS
└── starship.toml         # промпт
```

## Зависимости

- `niri` — Wayland-композитор
- `noctalia-shell` / Noctalia (Quickshell) — шелл, панели, док
- `alacritty` — терминал
- `fastfetch`, `btop`, `starship` — утилиты
- `cachyos` — дистрибутив (CachyOS)

Установка (Arch/CachyOS):

```bash
sudo pacman -S niri alacritty fastfetch btop starship
# Noctalia — по инструкции проекта (Quickshell)
```

## Установка конфигов

```bash
git clone https://github.com/dstatstrussia/niri-noctalia-dotfiles.git
cd niri-noctalia-dotfiles
./install.sh
```

Скрипт копирует содержимое `.config/` в `~/.config/` (существующие файлы будут перезаписаны — сделайте бэкап заранее).

Затем перезапустите niri или сессию:

```bash
niri msg action quit --skip-confirmation
```

## Примечания

- Конфиги рассчитаны на Wayland и запуск niri через `cachyos`/display manager.
- Палитры Noctalia лежат в `~/.config/noctalia/palettes/`.
- `config.toml` Noctalia содержит настройки панелей, анимаций, теней и раскладки.
