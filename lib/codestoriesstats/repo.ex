defmodule CodestoriesstatsWeb.Repo do
  use Ecto.Repo,
    otp_app: :codestoriesstats,
    adapter: Ecto.Adapters.Postgres

  def init(_, config) do
    config = Confex.Resolver.resolve!(config)
    url = System.get_env("DATABASE_URL")
    if url, do: {:ok, [url: url] ++ config}, else: {:ok, config}
  end
end
