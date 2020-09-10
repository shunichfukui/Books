#アプリケーション名	

 Books


#ローカルでの動作方法

コマンド
% git clone https://github.com/shunichfukui/Books.git


#アプリケーション概要  

本好きの皆様へ、

アマゾンのレビューだけで本当に満足ですか？
もっと深くその本について議論を交わし、
理解を深めたくはないですか？

・その本についての理解を深めたい方
・レビューだけでは語り足りない方
・本好きの仲間が欲しい方
・色んな人の見解を知りたい方
・普通に本が好きな方！

そんな人達のためのプラットフォームを作りました。
是非この機会にご活用ください。


URL https://books-28291.herokuapp.com/

Docker pull  コマンド
docker pull fukusyun/books-28291fukusyun

#テスト用アカウント

ニックネーム　サンプル
メールアドレス　sanple@gmail.com
パスワード 11111a


#利用方法

気になる本を探し、
その本のルーム内でやり取りをする
実際に会いに行っても良い。


#目指した課題解決

自分な好きな本について語りたいが、
ピンポイントで同じ本が好き！
という人がいることがあまりない
と思ったので、同じ本好きの人が集まれるようにしました


#洗い出した要件

・ユーザー管理機能
目的　名前がある状態での交流を可能にし、
ユーザー同士に親近感を生み出すため

・本の出品、削除、編集機能
目的　一人ひとりがプラットフォームを作成し、
ユーザー同士の交流を深めるため

・スライダー機能
目的　本を見やすくするため

・検索機能
目的　時間短縮のため
ユーザーのストレス緩和

・チャットボット
目的　バグ対応

・お気に入り機能
目的　評価のため


#実装した機能についてのGIFと説明
ユーザー管理機能

・divice使用
・新規登録、ログイン、ログアウト、SNS認証
・登録情報編集画面

https://gyazo.com/0c80d9681b9fdc1bbf790f451a81fb59
https://gyazo.com/ea472f67b52e5d69c57f0166cb3f415e

https://gyazo.com/7de4b6ae68784b157766d588752474be

本関連　
・本出品、本詳細、メッセージ投稿、本編集、本削除

・CSS アニメーション使用
https://gyazo.com/bf769d2968de3225e3b9bd0b0823eac3

https://gyazo.com/c3d820835ca6f2ac7d4ef475c9a87cdc

検索機能
・ランサック使用
・タグでの検索

https://gyazo.com/93c65acd627dad94fa4d426f374483dd

メッセージ機能

・コメント表示、コメント投稿、コメント削除機能
[画像](https://gyazo.com/f4c742159727ddc7b48ed36ba45451e3)

スライドショー

・kaminari使用
・Bootstrap使用
https://gyazo.com/b1ee2a16cf9421d6830efdcd535987e6

プレビュー機能


https://gyazo.com/6b0e3656e7693b1bb81a5dd2ccbe4617

お気に入り機能

・Ajaxを使用

https://gyazo.com/6f337384f5982cb6b4632aa6dd658dc7

Rspecによる自動テスト機能

・単体テスト機能
・統合テスト機能


その他機能?
・アマゾン移行
・簡易チャットボット
・Books紹介文のフェイドイン

#実装予定の機能

・アマゾンか、楽天APIを用いて、検索機能




データベース設計
https://gyazo.com/c8a124a73143ed4edee782dda9d653e5




Qiitaにて機能実装のための説明しています。
https://qiita.com/shunichfukui


#使用技術
-Ruby  2.6.5
-Ruby on rails 6.0.0
-Sass, Bootstrap, jQuery

-Rspec

-mysql 5.6.47

-Heroku 
https://books-28291.herokuapp.com/

-Docker,Docker-compose

-AWS
http://54.249.219.192/