# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :realtime_feed_api,
  ecto_repos: [RealtimeFeedApi.Repo]

# Configures the endpoint
config :realtime_feed_api, RealtimeFeedApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xAsu29jok59/T3yf62lUkPM9ga8pTBO5ZOCz+JksNRtTs8fg0h4bJ5gcl7brqAKp",
  render_errors: [view: RealtimeFeedApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: RealtimeFeedApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
