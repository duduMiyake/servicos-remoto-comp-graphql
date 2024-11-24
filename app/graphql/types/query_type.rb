module Types
  class QueryType < BaseObject
    field :usuarios, [ Types::UsuarioType ], null: false
    field :usuario, Types::UsuarioType, null: true do
      argument :id, ID, required: true
    end
    field :musicas, [ Types::MusicaType ], null: false
    field :musica, Types::MusicaType, null: true do
      argument :id, ID, required: true
    end
    field :playlists, [ Types::PlaylistType ], null: false
    field :playlist, Types::PlaylistType, null: true do
      argument :id, ID, required: true
    end

    def usuarios
      Usuario.all
    end

    def usuario(id:)
      Usuario.find_by(id: id)
    end

    def musicas
      Musica.all
    end

    def musica(id:)
      Musica.find_by(id: id)
    end

    def playlists
      Playlist.all
    end

    def playlist(id:)
      Playlist.find_by(id: id)
    end
  end
end
