class Song < ApplicationRecord
  # active_storageを使って音楽ファイルを保存する。
  has_one_attached :song_data
  # active_storageを使って画像を保存する。
  has_one_attached :image
  # バリデーション
  # with_options presence: true do
  #   validates :title
  #   validates :key
  #   validates :bpm
  #   validates :song_data
  # end
end
