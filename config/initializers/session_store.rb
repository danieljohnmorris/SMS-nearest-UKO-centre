# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ukonline_sms_session',
  :secret      => '1263a532882f73b1b939996816ae14ccd38ca08194643b131743f8090bb538af8e54dc5852d5fb88a3fd06a853b05a747c8713dc4b4f5bca6b77a547857ba6f8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
