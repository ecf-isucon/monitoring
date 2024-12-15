- (ローカル作業) 秘密鍵・公開鍵のペアを生成する
  ```sh
  $ ./init.sh
  
  # 公開鍵が cat されるのでコピーする
  ssh-ed25519 ...
  ```
- (リモート作業) 競技サーバの `isucon` ユーザでの ssh ログインができるようにする
  ```sh
  $ ssh {{ you }}@{{ isucon-server }}

  # isucon ユーザに switch
  $ su isucon

  # authorized_keys を作成
  $ mkdir -p /home/isucon/.ssh
  $ touch /home/isucon/.ssh/authorized_keys

  # 公開鍵をペースト
  $ echo 'ssh-ed25519 ...' > /home/isucon/.ssh/authorized_keys

  # sshd をリスタート
  $ sudo systemctl restart sshd
  ```
