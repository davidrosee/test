# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :casinoreviews,
  ecto_repos: [Casinoreviews.Repo]

# Configures the endpoint
config :casinoreviews, CasinoreviewsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZpaSk/0/e4TDWmnMFNLd3t+GqaYRBWryuSIkVX2deH/RTB3yyqwyv6jPvYTp1Lrw",
  render_errors: [view: CasinoreviewsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Casinoreviews.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
