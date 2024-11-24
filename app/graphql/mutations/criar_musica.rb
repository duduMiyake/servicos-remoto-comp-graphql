module Mutations
  class CriarMusica < BaseMutation
    argument :nome, String, required: true
    argument :artista, String, required: true

    type Types::MusicaType

    def resolve(nome:, artista:)
      Musica.create!(nome: nome, artista: artista)
    end
  end
end
