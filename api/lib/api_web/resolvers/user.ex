defmodule Api.Resolvers.User do
  alias Api.Accounts

  @desc "Resolver to retrieve all users"
  def users(_,_,_) do
    {:ok, Accounts.list_users}
  end

  @desc "Resolver to create a user"
  def create_user(_,%{input: input}, _) do
    Accounts.create_user(input)
  end
end
