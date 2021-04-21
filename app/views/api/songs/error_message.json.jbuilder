json.song do
  json.title      @error_messages[:title].first
  json.key        @error_messages[:key].first
  json.bpm        @error_messages[:bpm].first
  json.image      @error_messages[:image].first
  json.song_data  @error_messages[:song_data].first
end