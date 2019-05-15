defmodule Api.Resolvers.User do
  alias Api.Accounts

  @desc "Resolver to retrieve all users"
  def users(_,_,_) do
    {:ok, Accounts.list_users}
  end
end
