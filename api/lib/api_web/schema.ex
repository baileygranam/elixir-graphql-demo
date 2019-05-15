defmodule Api.Schema do
  use Absinthe.Schema

  # import types
  import_types(Api.Schema.Types)

  query do
    nil
  end

  mutation do
    nil
  end
end
