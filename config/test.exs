import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :counter, CounterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Ff4NIT2J8iQOan5GNDVDtwjR3+XA73Mh0L7HIoC3gHKaJFkXX6gkGyVw1Hbvee3X",
  server: false

# In test we don't send emails.
config :counter, Counter.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
