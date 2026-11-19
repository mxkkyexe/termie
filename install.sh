#!/bin/sh
# Termie: puts the termie helper in ~/.local/bin, then pairs this computer with the Termie iPhone app.
#   curl -fsSL https://mxkkyexe.github.io/termie/install.sh | sh
# Wrapped in a function so a half-downloaded script never runs.
main() {
    set -e
    case "$(uname -s)" in
        Linux|Darwin) ;;
        *) echo "termie runs on macOS and Linux. On Windows, run this inside WSL (Ubuntu)." >&2; exit 1 ;;
    esac
    command -v python3 >/dev/null 2>&1 || { echo "termie needs python3. Install it, then run this again." >&2; exit 1; }
    dir="$HOME/.local/bin"
    mkdir -p "$dir"
    curl -fsSL https://mxkkyexe.github.io/termie/termie -o "$dir/termie.tmp"
    chmod +x "$dir/termie.tmp"
    mv "$dir/termie.tmp" "$dir/termie"
    exec "$dir/termie" pair "$@"
}
main "$@"
