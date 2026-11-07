# Omarchy Lite — Keyboard Shortcuts & Commands

A quick reference for managing windows, workspaces, terminal sessions, files, and wallpapers on macOS.

**Main modifier key:** `Option (⌥)`

On macOS, `Option` is equivalent to `Alt`. All shortcuts below use the macOS `Option` key.

---

## 1. AeroSpace — Window Management

### Navigate Between Windows

| Shortcut | Action |
|---|---|
| `Option + H` | Focus the window to the left |
| `Option + J` | Focus the window below |
| `Option + K` | Focus the window above |
| `Option + L` | Focus the window to the right |

### Move Windows

| Shortcut | Action |
|---|---|
| `Option + Shift + H` | Move window to the left |
| `Option + Shift + J` | Move window down |
| `Option + Shift + K` | Move window up |
| `Option + Shift + L` | Move window to the right |

### Switch Layouts

| Shortcut | Action |
|---|---|
| `Option + /` | Toggle between horizontal and vertical tiling |
| `Option + ,` | Toggle between horizontal and vertical accordion layouts |
| `Option + Shift + ;` | Enter service mode |
| `Option + Shift + ;`, then `F` | Toggle between floating and tiling layouts |
| `Option + Shift + ;`, then `R` | Flatten the workspace tree |
| `Esc` | Exit service mode |

---

## 2. AeroSpace — Workspace Management

There are five workspaces, each assigned a number.

### Switch Between Workspaces

| Shortcut | Workspace |
|---|---|
| `Option + 1` | Development |
| `Option + 2` | Browser |
| `Option + 3` | Terminal |
| `Option + 4` | Productivity |
| `Option + 5` | Other |
| `Option + Tab` | Switch to the previous workspace |

### Move Windows Between Workspaces

| Shortcut | Action |
|---|---|
| `Option + Shift + 1` | Move window to workspace 1 |
| `Option + Shift + 2` | Move window to workspace 2 |
| `Option + Shift + 3` | Move window to workspace 3 |
| `Option + Shift + 4` | Move window to workspace 4 |
| `Option + Shift + 5` | Move window to workspace 5 |

---

## 3. Ghostty — Terminal

| Shortcut | Action |
|---|---|
| `Option + Enter` | Open a new Ghostty window |

This is the only custom Ghostty-related shortcut configured so far. Custom shortcuts for splitting terminal panes have not been configured yet.

---

## 4. Yazi — Terminal File Manager

Launch Yazi from the terminal with:

```bash
y
```

### Navigation and File Operations

| Key | Action |
|---|---|
| `H` | Go to the parent directory |
| `J` | Move down |
| `K` | Move up |
| `L` | Enter the selected directory |
| `Enter` | Open the selected file |
| `Q` | Quit Yazi |
| `G` | Go to the bottom |
| `g` | Go to the top |
| `.` | Toggle hidden files |
| `/` | Search |
| `Z` | Open the quick navigation menu |

Yazi uses Vim-style navigation, making it consistent with the keyboard-driven workflow used in Neovim.

---

## 5. Wallpaper Management — Terminal Commands

| Command | Action |
|---|---|
| `wallbrowse` | Browse wallpaper collections |
| `wallrandom` | Set a random wallpaper |
| `wallrandom Fantasy` | Set a random wallpaper from the Fantasy collection |
| `wallcurrent` | Display the current wallpaper |

---

## 6. Quick Navigation Map

### Omarchy Lite — Daily Cheat Sheet

| Shortcut / Command | Purpose |
|---|---|
| `Option + H/J/K/L` | Navigate between windows |
| `Option + Shift + H/J/K/L` | Move windows |
| `Option + 1–5` | Switch workspaces |
| `Option + /` | Change tiling orientation |
| `Option + Enter` | Open Ghostty |
| `y` | Launch Yazi |
| `wallbrowse` | Browse wallpapers |
| `wallrandom` | Set a random wallpaper |

### Recommended Learning Order

Start by memorizing these three shortcut groups:

**1. Window navigation:** `Option + H/J/K/L`

**2. Workspace switching:** `Option + 1–5`

**3. Window movement:** `Option + Shift + H/J/K/L`

These are the core shortcuts for everyday window and workspace management.
