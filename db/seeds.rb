# songモデル初期データ
songs = [
  {
    title: 'AllNight',
    key:   'Cmaj',
    bpm:   '128',
    image: {
      path: 'public/images/AllNight.jpg',
      filename: 'AllNight.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/AllNight.mp3',
      filename: 'AllNight.mp3',
      content_type: 'audio/mpeg'
    }
  },

  {
    title: 'DarkerThanBlack',
    key:   'Fmaj',
    bpm:   '125',
    image: {
      path: 'public/images/DarkerThanBlack.jpg',
      filename: 'DarkerThanBlack.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/DarkerThanBlack.mp3',
      filename: 'DarkerThanBlack.mp3',
      content_type: 'audio/mpeg'
    }
  },

  {
    title: 'Don\'tNeedNoMoney',
    key:   'Dmaj',
    bpm:   '126',
    image: {
      path: 'public/images/Don\'tNeedNoMoney.jpg',
      filename: 'Don\'tNeedNoMoney.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/Don\'tNeedNoMoney.mp3',
      filename: 'Don\'tNeedNoMoney.mp3',
      content_type: 'audio/mpeg'
    }
  },

  {
    title: 'FeelsLikeLove',
    key:   'Cmin',
    bpm:   '128',
    image: {
      path: 'public/images/FeelsLikeLove.jpg',
      filename: 'FeelsLikeLove.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/FeelsLikeLove.mp3',
      filename: 'FeelsLikeLove.mp3',
      content_type: 'audio/mpeg'
    }
  },

  {
    title: 'Generation',
    key:   'Fmaj',
    bpm:   '128',
    image: {
      path: 'public/images/Generation.jpg',
      filename: 'Generation.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/Generation.mp3',
      filename: 'Generation.mp3',
      content_type: 'audio/mpeg'
    }
  },

  {
    title: 'GetGetDown',
    key:   'Dmin',
    bpm:   '128',
    image: {
      path: 'public/images/GetGetDown.jpg',
      filename: 'GetGetDown.jpg',
      content_type: 'image/jpg'
    },
    song_data: {
      path: 'public/songs/GetGetDown.mp3',
      filename: 'GetGetDown.mp3',
      content_type: 'audio/mpeg'
    }
  },
]

ActiveRecord::Base.transaction do
  songs.each do |song|
    song_instance = Song.new(song)
    song_instance.image.attach(
      io: File.open(song[:image][:path]),
      filename: song[:image][:filename],
      content_type: song[:image][:content_type]
    )
    song_instance.song_data.attach(
      io: File.open(song[:song_data][:path]),
      filename: song[:song_data][:filename],
      content_type: song[:song_data][:content_type]
    )
    song_instance.save
  end
end