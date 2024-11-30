#!/bin/sh

set -ex

sudo apt update
sudo apt install fonts-noto-cjk
rm -rf ~/.cache/matplotlib

curl -LsSf https://astral.sh/uv/install.sh | sh
uv venv --allow-existing ${UV_PROJECT_ENVIRONMENT}
