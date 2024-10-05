### dotfiles

Branch
- `main`
  - ほぼREADMEだけ
- `linux`
- `macos`

`init.sh`
- Homeディレクトリ直下に設定ファイルのリンクを貼る
- 一部のファイルについては作成しないため注意
  - サブディレクトリ以下にあるファイル類は個人的なメモ用で、リンクは貼られない

`init-config.sh`
- `.config/`以下に配置される設定ファイルを、個別のGithubリポジトリから取ってきて`$HOME/.config/`以下に配置する
