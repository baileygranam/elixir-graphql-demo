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

  # mutations
  mutation do
    @desc "Create a user"
    field :create_user, type: :user do
      arg(:input, non_null(:user_input))
      resolve(&Resolvers.User.create_user/3)
    end
  end
end
