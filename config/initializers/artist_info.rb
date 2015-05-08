#Loading in the artist's name from "artist.yml" config file

artist_config_info = YAML.load_file('config/artist.yml')

Rails.configuration.x.artist.name = artist_config_info["artist"]["name"]
Rails.configuration.x.artist.email = artist_config_info["artist"]["email"]