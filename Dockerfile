FROM python:3.12-slim

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    DEBIAN_FRONTEND=noninteractive apt-get update\
    && apt-get install -y --no-install-recommends gettext git graphviz make \
    && apt autoremove -y

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# - Silence uv complaining about not being able to use hard links,
# - tell uv to byte-compile packages for faster application startups,
# - prevent uv from accidentally downloading isolated Python builds,
# - pick a Python,
# - and finally declare `UV_PROJECT_ENVIRONMENT` as the target for `uv sync`.
ENV UV_LINK_MODE=copy \
    UV_COMPILE_BYTECODE=1 \
    UV_PYTHON_DOWNLOADS=never \
    UV_PYTHON=python3.12 \
    UV_PROJECT_ENVIRONMENT=/usr/local
# Docker上では、uv sync で /usr/local へインストールし /usr/local/bin のコマンドが使えます

RUN mkdir -p /doc
WORKDIR /doc
COPY ./ /doc
RUN --mount=type=cache,target=/root/.cache/uv uv sync --locked

CMD bash
