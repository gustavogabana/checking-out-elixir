defmodule ExampleBank.Repo do
  use Ecto.Repo,
    otp_app: :example_bank,
    adapter: Ecto.Adapters.Postgres
end
