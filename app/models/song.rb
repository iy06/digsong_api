class Song < ApplicationRecord
  # active_storageを使って画像を保存する。
  has_one_attached :image
  # active_storageを使って音楽ファイルを保存する。
  has_one_attached :song_data
  # バリデーション
  with_options presence: true do
    validates :title
    validates :key
    validates :bpm
  end
  validate :image_presence
  validate :song_data_presence
  # 画像データがattachされているか、content_typeが正常かのカスタムバリデーション
  def image_presence
    if image.attached?
      if !image.content_type.in?(%('image/jpeg image/png'))
        errors.add(:image, 'にはjpegまたはpngファイルを添付してください')
      end
    else
      errors.add(:image, 'ファイルを添付してください')
    end
  end
  # 音楽データがattachされているか、content_typeが正常かのカスタムバリデーション
  def song_data_presence
    if song_data.attached?
      if !song_data.content_type.in?(%('audio/mpeg'))
        errors.add(:song_data, 'にはmp3ファイルを添付してください')
      end
    else
      errors.add(:song_data, 'ファイルを添付してください')
    end
  end
end
