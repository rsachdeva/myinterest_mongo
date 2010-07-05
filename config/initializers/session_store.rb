# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_myinterest_mongo_session',
  :secret      => 'c7426638471f9e5eeb6ff4297be74fbad96b77c7af6a83d97f77135e4c809a212fdf1f11cf69d4775a588a8f51e605d91c4207b5d47bd249ec9a3796cc5220a0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
