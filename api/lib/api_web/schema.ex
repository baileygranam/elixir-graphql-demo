defmodule Api.Schema do
  use Absinthe.Schema

  alias Api.Resolvers

  # import types
  import_types(Api.Schema.Types)

  # queries
  query do
    @desc "Get a list of all users"
    field :users, list_of(:user) do
      resolve(&Resolvers.User.users/3)
    end
  end

  # # mutations
  # mutation do
  #   nil
  # end
end
