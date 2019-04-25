#!/bin/bash

# container 内でファイルを作成したファイルがroot権限になる問題についての対策
# デフォルト 1000
USER_ID=${LOCAL_UID:-1000}
GROUP_ID=${LOCAL_GID:-1000}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
useradd -u $USER_ID -o -m user
groupmod -g $GROUP_ID user
export HOME=/home/user

# python3.6 をデフォルトに
mkdir -p $HOME/bin
ln -s -f /usr/bin/python3.6 /usr/bin/python

# user 以下にjupyter lab の設定ファイルを保存
# config manager
mkdir -p /home/user/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension
echo '{"enabled":true}' > \
  /home/user/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/plugin.jupyterlab-settings
# 黒背景設定を追加
mkdir -p /home/user/.jupyter/lab/user-settings/@jupyterlab/apputils-extension
echo '{"theme":"JupyterLab Dark"}' > \
  /home/user/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings
# vim extansion
mkdir -p /home/user/.jupyter/lab/user-settings/@jupyterlab/codemirror-extension
echo '{"keyMap": "vim"}' > \
  /home/user/.jupyter/lab/user-settings/@jupyterlab/codemirror-extension/commands.jupyterlab-settings


exec /usr/sbin/gosu user "$@"


