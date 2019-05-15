defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api
    # Forward API requests to GraphQL layer
    forward "/graphql", Absinthe.Plug, schema: Api.Schema
    if Mix.env() == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL, schema: Api.Schema, interface: :simple
    end
  end
end
