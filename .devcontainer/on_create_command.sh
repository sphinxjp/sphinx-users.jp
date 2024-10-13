#!/bin/sh

set -ex

sudo apt update
sudo apt install fonts-noto-cjk
rm -rf ~/.cache/matplotlib

curl -LsSf https://astral.sh/uv/install.sh | sh
. $HOME/.cargo/env

uv venv --allow-existing ~/.local 
uv pip install --prefix ~/.local/ -r requirements.txt 
