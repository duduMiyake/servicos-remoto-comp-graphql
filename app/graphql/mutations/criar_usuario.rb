module Mutations
  class CriarUsuario < BaseMutation
    argument :nome, String, required: true
    argument :idade, Integer, required: true

    type Types::UsuarioType

    def resolve(nome:, idade:)
      Usuario.create!(nome: nome, idade: idade)
    end
  end
end
