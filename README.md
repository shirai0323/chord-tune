## サービス名
**chord tune**

## ■ サービス概要
楽曲のコード進行を歌詞と共に投稿、閲覧、共有できるサービス

## ■メインのターゲットユーザー
- 楽器や音楽を始めたばかりの初心者
- 既に楽器や音楽経験はあるが楽曲の耳コピが面倒な方
- オリジナル楽曲のコードを発信したい方

## ■ユーザーが抱える課題
- 楽曲のコード進行が分からない
- コードの耳コピが難しい(特に初心者、挫折の原因の一つにもなる)

## ■解決方法

- 未ログインユーザー
  - ユーザー登録
    - ユーザー名、メールアドレス、パスワードが登録できる
  - ログイン
  - 登録されている楽曲コード譜の閲覧
    - 投稿されたコード譜の一覧と詳細を表示できる
  - 検索機能
    - アーティスト・曲名・ジャンルから検索できる、タグで登録されているコード譜が検索ができる

- ログインユーザー
  - プロフィールの編集
    - ユーザー名・メールアドレス・パスワードの編集、自己紹介文の記入、ユーザーアイコンの編集ができる
  - マイページが表示できる
    - ユーザー名と投稿したコード譜を表示できる
  - ログアウト
  - 楽曲のコード譜新規作成、編集
    - 楽曲のコード譜を作成し投稿できる
	  - 下書きを作成、保存ができる
	  - アーティスト・曲名・ジャンルを登録、選択できる
	  - apple music,spotifyで配信されている楽曲を投稿に紐付け(もしくは埋め込み)できる
  - 登録されている楽曲コード譜の閲覧
    - 投稿されたコード譜の一覧と詳細を表示できる
  - 検索機能
    - アーティスト・曲名・ジャンルから検索できるタグで登録されているコード譜が検索ができる
  - コメント機能
    - 投稿されたコード譜にコメントができる
  - タグ登録機能
    - 投稿された楽曲コード譜にタグ付けができる
  - ブックマーク機能
    - 投稿された楽曲コード譜をブックマークできる
  - コードレビュー機能(採譜されたコード譜の整合性や精度を保つため)
    - 作成されたコード譜を5つ星評価で評価できる

- 管理ユーザー
  - ユーザー管理(一覧・詳細・編集・削除)
  - コード譜管理(一覧・詳細・作成・編集・削除)

## ■なぜこのサービスを作りたいのか？
私自身趣味で楽器演奏をするのですがコードの耳コピは苦手で面倒だったため、
楽曲のコードを投稿・共有できるサービスがあればより楽器演奏が捗ると思った為。

## ■画面遷移図
https://www.figma.com/file/w9rxzLEpUOzNEGqq37DcG6/chord-tune%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0%3A1&t=HbDF8Zg0b1QUtUen-1

## ■スケジュール
企画〜技術調査：1/15 〆切
README〜ER図作成：1/20 〆切
メイン機能実装：1/20 - 1月末
β版をRUNTEQ内リリース（MVP）：2/15
本番リリース：2月末
