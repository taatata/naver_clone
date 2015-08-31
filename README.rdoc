== README

* Ruby version
2.0.0

* System dependencies
rails: 4.0.5

## Naverまとめの調査

Wiresharkを使って、どのような通信をしているか調査した。
ほぼWeb APIとして実装していて、Javascriptで呼び出していた。
できるだけ同じようにしようとしたが、断念。
Grape gemなどは調査しつつも、とりあえずやれそうなところから手をつけていくことにした。

## 制作範囲

見れるページは

- `/`
- サインアップ、サインイン、サインアウト
- まとめ記事作成
- まとめ記事index、まとめ記事show

である。

## データベース構造

### まとめ記事(matome)

まとめ記事は`has_many blocks`である。

### ブロック(block)

ブロックは`belongs_to matome`である。
リンクや、画像、動画など具体的なデータを扱いやすくするために、ブロックというラッパーを作った。
`has_one link`などで、リンクなどは`belongs_to block`の一対一の形。
更にブロックは、ブロックリストの順番データも持っている。

### リンク(link)

gem nokogiriを使って、OGPを取得する。

### 画像(mimage)

gem carrierwaveを使って、画像取得、保存。

### 動画(movie)

youtubeのみ対応。
youtube_urlから`/v=(.*)/`でマッチさせてIDを取得し、`iframe`で埋め込み。

### 引用(quote)

テキスト増量しただけ。

### Twitter

未実装

### テキスト(text)

ただのテキスト

### 見出し(midasi)

ただの見出し（テキスト）

## 順番上下

ブロックの順番を「上・下」のリンクによって変更できる。
`blocks#order_up`などにroutesしている。

## block削除

削除リンクで削除される。
`blocks#destroy`が`method: :delete`によって実行される。
その際、順番の整合性も保たれる。
