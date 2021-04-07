class Api::Song < ApplicationRecord
  # active_storageを使って音楽ファイルを保存する。
  has_one_attached :song_data
end
