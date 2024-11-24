module Types
  class MutationType < BaseObject
    field :criar_usuario, mutation: Mutations::CriarUsuario
    field :criar_playlist, mutation: Mutations::CriarPlaylist
    field :criar_musica, mutation: Mutations::CriarMusica
    field :adicionar_musica_a_playlist, mutation: Mutations::AdicionarMusicaAPlaylist
    field :remover_musica_da_playlist, mutation: Mutations::RemoverMusicaDaPlaylist
  end
end
