# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :smalt,
  ecto_repos: [Smalt.Repo]

config :smalt_web,
  ecto_repos: [Smalt.Repo],
  generators: [context_app: :smalt]

# Configures the endpoint
config :smalt_web, SmaltWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MUjC6vCia/IF85fIQbpGIrXxjuoz14/GEjoHXa0pJ+dxPZYweX0tBn88Hoy99ZD8",
  render_errors: [view: SmaltWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Smalt.PubSub,
  live_view: [signing_salt: "6+2zxjMX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
