json.extract! song, :id, :name, :explicit, :album_id, :genre, :created_at, :updated_at
json.url song_url(song, format: :json)
