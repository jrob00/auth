# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = '529efea1417225d040316e772238cf334cfe00f9544c229a6c60e573a2616b185867e30478208301e1de6dfa14c76d46942e3aa1fa76e420a575a25cbf61f187'
