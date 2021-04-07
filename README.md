DigSong_Api　DB設計

# songsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|key|string||
|bpm|integer||

# songsアソシエーション
- has_one_attached :song_data (active_storage)