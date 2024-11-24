module Types
  class PlaylistType < BaseObject
    field :id, ID, null: false
    field :nome, String, null: false
    field :musicas, [ Types::MusicaType ], null: true
    field :usuario, Types::UsuarioType, null: false
  end
end
