defmodule Codestoriesstats.Repo do
  use Ecto.Repo,
    otp_app: :codestoriesstats,
    adapter: Ecto.Adapters.Postgres
end
