# DigSong_Api

音楽に、キー（KEY）とテンポ（BPM）を登録して、音楽を投稿できるアプリのApiです。
# 使用技術
## フロントエンド
- React (17.0.2)
- TypeScript (3.9.9)
- Sass (5.0.0)
- フロント側リポジトリ (https://github.com/iy06/digsong)

## バックエンド
 - Ruby (2.6.5)
 - Ruby on Rails (6.0.3.6)

## DBMS
- MySQL(5.6)

## インフラ
- EC2

# DB設計

## songsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|key|string|null: false|
|bpm|integer|null: false|

## アソシエーション
- has_one_attached :song_data (active_storage)
- has_one_attached :image (active_storage)

# 今後の展望
- ユーザー管理機能の実装
- Update,Destroy機能の実装
- S3の導入
- キーとテンポの自動算出の実装
- キーとテンポに合う曲の表示機能の実装
