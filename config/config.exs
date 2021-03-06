# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :javex,
  ecto_repos: [Javex.Repo]

# Configures the endpoint
config :javex, Javex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+IV/t+gf75FUwMNpL61hhILFvKWSACK30kpEgHdB181eorO+ZAcNdS807U4refqm",
  render_errors: [view: Javex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Javex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ex_aws,
  access_key_id: System.get_env("AWS_ACCESS_KEY_ID"),
  secret_access_key: System.get_env("AWS_SECRET_ACCESS_KEY"),
  region: "ap-southeast-1"
  # s3: [
    # scheme: "https://", 
    # host: "#{System.get_env("BUCKET_NAME")}.s3.amazonaws.com", 
    # region: "ap-southeast-1"
  # ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
