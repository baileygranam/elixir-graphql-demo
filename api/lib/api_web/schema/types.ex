defmodule Api.Schema.Types do
  use Absinthe.Schema.Notation

  alias Api.Schema.Types

  import_types(Types.User)
end
