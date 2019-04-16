#!/bin/bash

# container 内でファイルを作成したファイルがroot権限になる問題についての対策

# デフォルト 1000
USER_ID=${LOCAL_UID:-1000}
GROUP_ID=${LOCAL_GID:-1000}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
useradd -u $USER_ID -o -m user
groupmod -g $GROUP_ID user
export HOME=/home/user

exec /usr/sbin/gosu user "$@"
