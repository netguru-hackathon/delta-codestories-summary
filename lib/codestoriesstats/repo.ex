defmodule Codestoriesstats.Repo do
  use Ecto.Repo,
    otp_app: :codestoriesstats,
    adapter: Ecto.Adapters.Postgres

  def init(_, config) do
    config = Confex.Resolver.resolve!(config)
    {:ok, config}
  end
end
