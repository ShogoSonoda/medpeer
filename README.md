#   メドピア株式会社様の選考課題

## はじめ方
ご自身の環境下にて以下を行ってください。
* bundle install
* rails s

## 使い方
Google ChromeにあるTrend API Testerを用いてリクエストを送ります。  
chrome-extension://aejoelaoggembcahagimdiliamlcdmfm/index.html

### アイデア登録API
* 以下のようにリクエストを送ります。
<img width="1626" alt="アイデア登録リクエスト" src="https://user-images.githubusercontent.com/67961499/132971457-4e6b6bcc-f855-4732-ba16-475da1b18d8d.png">

* すると、以下のようなレスポンスが返ってきます。
<img width="1619" alt="アイデア登録レスポンス" src="https://user-images.githubusercontent.com/67961499/132971502-edd357c7-4f01-4f31-9015-a3101cee13e1.png">

### アイデア取得API
#### ①category_nameが指定されていない場合の一覧表示。
* 以下のようにリクエストを送ります。
<img width="1603" alt="アイデア取得全てリクエスト" src="https://user-images.githubusercontent.com/67961499/132971565-a30b609f-d492-44d8-b1b9-d880a0833849.png">

* すると、以下のようなレスポンスが返ってきます。
<img width="1610" alt="アイデア取得全てレスポンス" src="https://user-images.githubusercontent.com/67961499/132971695-6ac4c0ee-775d-4d39-b0cd-5f2b73039b28.png">

#### ②category_nameが指定されている場合の一覧表示。
* 以下のようにリクエストを送ります。
* 「category_name=アプリ」のように、指定するワードを「category_name=」の後ろに入力します。
<img width="1607" alt="アイデア取得カテゴリー指定リクエスト" src="https://user-images.githubusercontent.com/67961499/132971774-854da278-a922-4ca4-8e7f-60d00b2cda24.png">

* すると、以下のようなレスポンスが返ってきます。
<img width="1603" alt="アイデア取得カテゴリー指定レスポンス" src="https://user-images.githubusercontent.com/67961499/132971806-fa66d819-354b-4c6a-8d6a-2be0406fe73b.png">

#### ③category_nameが指定されているが、そのcategory_nameが登録されていない場合の一覧表示。
* 以下のようにリクエストを送ります。
<img width="1607" alt="アイデア取得カテゴリー該当なしリクエスト" src="https://user-images.githubusercontent.com/67961499/132971873-7562a418-1af9-4090-859c-909a3a08053f.png">

* すると、以下のようなレスポンスが返ってきます。
<img width="1613" alt="アイデア取得カテゴリー該当なしレスポンス" src="https://user-images.githubusercontent.com/67961499/132971891-1335b7e0-2548-4c09-8153-e5447ccd7855.png">

### RSpecを用いた結合テストについて
RSpecにてテストを書いていましたが、アイデア取得APIのテストの書き方がわかりませんでした。
URLにcategory_nameを含めてリクエストしたことで、URIインバリッドエラーが発生し、それを解消するためには、URIモジュールのencodeメソッドを使う必要があるようで、それについて色々と検索して解決策を探す努力をしたのですが、いい解決策を見出すことができませんでした。
中途半端な課題提出となってしまい申し訳ありませんでした。
