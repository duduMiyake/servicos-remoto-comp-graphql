module Types
  class UsuarioType < BaseObject
    field :id, ID, null: false
    field :nome, String, null: false
    field :idade, Integer, null: false
    field :playlists, [ Types::PlaylistType ], null: true
  end
end
