#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Homeディレクトリ直下にリンクを作成
for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    # VSCodeの設定は今の所Github経由の同期機能で処理してるため、スルー
    [[ "$dotfile" == "${SCRIPT_DIR}/.settings.json" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done
