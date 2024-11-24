module Types
  class MusicaType < BaseObject
    field :id, ID, null: false
    field :nome, String, null: false
    field :artista, String, null: false

    # Adiciona o campo playlists
    field :playlists, [ Types::PlaylistType ], null: true

    def playlists
      object.playlists
    end
  end
end
