json.array! @songs do |song|
  json.id        song.id
  json.title     song.title
  json.key       song.key
  json.bpm       song.bpm
  # imageとsong_dataのファイル情報をURL化して返す
  json.song_data (request.protocol + request.host_with_port + url_for(song.song_data))
  json.image     (request.protocol + request.host_with_port + url_for(song.image))
end
