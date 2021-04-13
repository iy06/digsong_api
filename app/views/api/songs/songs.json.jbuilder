json.array! @songs do |song|
  json.id        song.id
  json.title     song.title
  json.key       song.key
  json.bpm       song.bpm
  # imageとsong_dataのファイル情報を渡す
  json.song_data song.song_data.blob
  json.image     song.image.blob
end