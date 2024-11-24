module Mutations
  class CriarPlaylist < BaseMutation
    argument :nome, String, required: true
    argument :usuario_id, ID, required: true

    type Types::PlaylistType

    def resolve(nome:, usuario_id:)
      usuario = Usuario.find(usuario_id)
      usuario.playlists.create!(nome: nome)
    end
  end
end
