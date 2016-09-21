総会議案書テンプレート
========================
これは，総会議案書のテンプレートリポジトリです．
コマンドを使って簡単に総会議案書リポジトリを生成することができます．

セットアップ手順
--------------------
セットアップですべきことは、次の2つです。

1. テンプレートファイルとBitbucketの課題の生成
2. Werckerのセットアップ

セットアップ作業の1つ目は、
担当者が編集するファイルの間違いを少なくし、
すべての担当部分を課題として管理できるようにするために必要です。
これらの作業は、Rubyスクリプトと設定ファイルを用いることで、簡単に設定することができます。
作業方法は、このあとの「setup.rbについて」や[README\_setup.md](docs/README_setup.md)をご覧ください。

2つ目のWerckerは、継続的インテグレーションサービスです。
設定を行うと、次のことが自動的に行われるようになります。

* 自動ビルドしたPDFを、Slackにアップロード
* 誤字や表記ゆれの指摘をBitbucketにコメント

人手でやることを減らせるので、設定しておくと良いでしょう。
作業方法は、このあとの「Werckerについて」や[README\_CI.md](docs/README_CI.md)をご覧ください。

setup.rbについて
---------------------
年度などの初期設定をしたり，テンプレートファイルを生成するツールです．
soukai-templateからforkした直後や，各局のブランチを作るときに使ってください．

soukai-templateからforkした後に必ず以下のコマンドを実行して，年度などの情報を設定してください．

```shell
$ ruby setup.rb init
```

また，このツールを使って，予めsubsection以降の文書を書くためのファイルを生成して，
それを編集するように呼びかけてくださいしてください．
これはコンフリクトを避けるためです．
タスクを作成する時に編集するべきファイルパスを明示しておくと混乱が減ると思われます．

詳しくは，[README\_setup.md](docs/README_setup.md)を見てください．

Werckerについて
-----------------------
継続的インテグレーションを支援するサービス Werckerを用いて，総会文書のビルドを自動化しています．
WerckerやWerckerのセットアップ方法については，[README\_CI.md](docs/README_CI.md)に詳しく紹介していますので，興味がある方やセットアップ担当者はぜひご覧ください．
