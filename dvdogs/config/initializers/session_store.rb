# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dvdogs_session',
  :secret      => 'b7044f48a973e61f1217a64cdd5182cf95babdbc8e3447c6fc54d928cc502b444c9683f43c2330dbd45c007026cdefbb17fc99b96bc43a6ec05b45beea844066'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
