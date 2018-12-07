use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :codestoriesstats, CodestoriesstatsWeb.Endpoint,
  http: [:inet6, port: {:system, :integer, "PORT", 4000}],
  url: [scheme: "https", host: "codestories-stats.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: {:system, "SECRET_KEY_BASE"}

# Do not print debug messages in production
config :logger, level: :info

# Configure your database

config :codestoriesstats, Codestoriesstats.Repo,
  url: {:system, "DATABASE_URL"},
  pool_size: {:system, :integer, "POOL_SIZE", "10"},
  ssl: true
