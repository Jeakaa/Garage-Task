# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Todo_session',
  :secret      => '5fbf2299588063c30fca13736d3243a48e04f32c674701fe78d3dc873d9177033453416aaa44c2be9357f6ae478c7fabe0d4b30db10274ce622a35e913e8d3c5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
