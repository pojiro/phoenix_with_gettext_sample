# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :my_app, MyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AWJgLNfDuu7YCJZ59reV6d5BLU4VTR6eztgGteLNJFOx1jpYFB7zyq9U8DHy1LUT",
  render_errors: [view: MyAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyApp.PubSub,
  live_view: [signing_salt: "hj/+rE/a"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :gettext, :default_locale, "ja"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
