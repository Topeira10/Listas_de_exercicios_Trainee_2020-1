json.extract! album, :id, :name, :artist, :created_at, :updated_at
json.url album_url(album, format: :json)
