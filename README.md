# ながのCAKE

## 概要
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト開発。
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになった。
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管理機能を含んだ通販サイトを開設しようと思い至った。

## 通販について
- 通販では注文に応じて製作する受注生産型としている。
- 現在通販での注文量は十分に対応可能な量のため、1日の受注量に制限は設けない。
- 送料は1配送につき全国一律800円。
- 本来は軽減税率により宅配物は税率8%ですが、今回は10%で統一します。
- 友人や家族へのプレゼントなど、注文者の住所以外にも商品を発送できる。
- 支払方法はクレジットカード、銀行振込から選択できる。

## 用語の定義
| 用語 | 意味 |
| --- | --- |
| 顧客| ながのCAKEの商品を購入する人（客）|
| 会員 | ECサイトにユーザ登録している顧客 |
| ECサイト | 顧客が利用するサイト |
| 管理サイト | 店で働く事務員・パティシエ等が利用するサイト（管理者用サイト） | 
| 注文ステータス | 注文の状態遷移を表す（後述）。 |
| 製作ステータス | 注文に紐付く注文商品の状態遷移を表す（後述）。 |
| 販売ステータス | 商品の販売状況を表す。現状、**販売中**、**売切れ**の2パターンがある。<br> 販売停止商品は「売切れ」をセットする。 |
| 会員ステータス | 現状、**有効・退会**の2パターンがある。 |
| ジャンル | 商品の種類。 <br> 現状、**ケーキ**、**プリン**、**焼き菓子**、**キャンディ**の4ジャンルある。 |
| 注文個数 | 1回の注文に紐付く注文個数の合計。 <br> 例）商品Aを3個、商品Bを2個注文→注文個数は5。 |
| 商品小計 | 商品単価（税込）×個数 <br> 例）1,200円（税込）の商品を2個購入＝商品小計は2,400円 |

## 会員ステータス
| ステータス名 | 用途 | ステータス | 設定タイミング |
| --- | --- | --- | --- |
| 注文ステータス | 注文状況を表す。会員の購入履歴にも表示する。 | 入金待ち | 注文した時点で設定される。 | 
| ^   | ^   | 入金確認 | 事務員が入金を確認したら更新する | 




