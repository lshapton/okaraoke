# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :okaraoke,
  ecto_repos: [Okaraoke.Repo]

# Configures the endpoint
config :okaraoke, Okaraoke.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k7BrXKY6is+2QnC+9KLNAe1bHecY7Tt4rDjKq3RPwn9kuQItnHz8Jy5aWnlfzkwQ",
  render_errors: [view: Okaraoke.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Okaraoke.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
