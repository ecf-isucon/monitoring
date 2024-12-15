# !/usr/bin/env bash

WORK_DIR=$(dirname $0)
cd $WORK_DIR

ssh-keygen -f $WORK_DIR/key/id_isucon -t ed25519 -N "" -C ""

cat $WORK_DIR/key/id_isucon.pub
