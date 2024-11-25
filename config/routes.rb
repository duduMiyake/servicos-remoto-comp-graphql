Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  get "up" => "rails/health#show", as: :rails_health_check

  if Rails.env.development?
    # Rota para acessar a interface do graphQL
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql"
  end
end
