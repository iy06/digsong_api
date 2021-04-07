json.array! @songs do |song|
  json.id song.id
  json.title song.title
  json.key song.key
  json.bpm song.bpm
  json.song_data song.song_data
end