# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ptnd_session',
  :secret      => 'a053decfe89b67497d10e020b376a1713fa37bd408459198f6993c7dfdceea1516601c023e31cc45b5a08cab6d360d9ddcfe8fa38e0be98d9df6e4bafe03c3aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
