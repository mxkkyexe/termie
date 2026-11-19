# termie

Your computer's terminal on your iPhone, over Tailscale and SSH.

Pair a Mac or Linux computer (on Windows, inside WSL):

    curl -fsSL https://mxkkyexe.github.io/termie/install.sh | sh

This repo holds the website, the installer and `termie`, the small helper that runs on your computer
(Python 3, standard library only, plus `qrencode`). It installs to `~/.local/bin/termie`.
The app itself is not open source.
