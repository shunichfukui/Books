<h1>アプリケーション名</h1>

Books

<h1>ローカルでの動作方法</h1>

コマンド

% git clone https://github.com/shunichfukui/Books.git

docker-compose up

エラー時(大変お手数ですが、、)

brew install yarn

yarn add webpack

<h1>アプリケーション概要</h1>

本好きな方のために
好きな本について語り合う仲間をつくりたいという願いをもとに、

<h2>本特化型SNS</h2>をテーマにして、それに適したプラットフォームを作りました。

URL https://books-28291.herokuapp.com/

<h1>利用方法</h1>

気になる本を探し、
その本のルーム内でやり取りをする
実際に会いに行っても良い。

<h1>目指した課題解決</h1>

自分な好きな本について語りたいが、
ピンポイントで同じ本が好き！
という人がいることがあまりない
と思ったので、同じ本好きの人が集まれるようにしました

<h1>洗い出した要件</h1>

・ユーザー管理機能
目的　名前がある状態での交流を可能にし、
ユーザー同士に親近感を生み出すため
<br/>

・本の出品、削除、編集機能
目的　一人ひとりがプラットフォームを作成し、
ユーザー同士の交流を深めるため
<br/>

・ページネーション機能
目的　本を見やすくするため
<br/>

・検索機能
目的　時間短縮のため
ユーザーのストレス緩和
<br/>

・チャットボット
目的　バグ対応
<br/>

・お気に入り機能
目的　評価のため

<h1>実装した機能についてのGIFと説明</h1>
ユーザー管理機能

・divice 使用
・新規登録、ログイン、ログアウト、SNS 認証
・登録情報編集画面
・SNS 認証につきましては、大変お手数ですが下の黒丸にカーソルを合わせると出てきます。
ちょっとした驚きや、遊びゴゴロを大切にさせてもらいました。

![demo](https://gyazo.com/7de4b6ae68784b157766d588752474be/raw)
<br/>

本関連　
・本出品、本詳細、メッセージ投稿、本編集、本削除

・CSS アニメーション使用

![画像](https://gyazo.com/cf8c430050e85d3a4af77cc4b846b4e3/raw)
<br/>

検索機能
・ランサック使用
・タグでの検索

<br/>

メッセージ機能

・コメント表示、コメント投稿、コメント削除機能

<br/>

ページネーション機能

・kaminari 使用
・Bootstrap 使用

プレビュー機能
・アクティブストレージ使ってます。

お気に入り機能

・Ajax を使用
![画像](https://gyazo.com/6f337384f5982cb6b4632aa6dd658dc7/raw)

Rspec による自動テスト機能

・単体テスト機能
・統合テスト機能
<br/>

その他機能?
・アマゾンのサイトへの移行
・Books 紹介文のフェイドイン

・簡易チャットボット
GitHub はこちら！
https://github.com/shunichfukui/chat

<h1>実装予定の機能</h1>

・CircleCI 自動化項目追加
・インクリメンタルサーチ機能
・アマゾン API を用いて本の検索ができるようにしたい

<h1>データベース設計</h1>

<img width="582" alt="c8a124a73143ed4edee782dda9d653e5" src="https://user-images.githubusercontent.com/68207981/92671295-d3871500-f350-11ea-993b-f512d3ade666.png">

<br/>

Qiita にて機能実装のための説明させてもらってます。
https://qiita.com/shunichfukui

<h1>使用技術</h1>
-Ruby  2.6.5

-Ruby on rails 6.0.0

-Sass, Bootstrap, jQuery,Ajax

-Capistrano,Unicorn,Nginx

-Rspec

-mysql 5.6.47

-Heroku
https://books-28291.herokuapp.com/

-Docker,Docker-compose

-CircleCI
circleci local execute

-AWS
http://54.249.219.192/
