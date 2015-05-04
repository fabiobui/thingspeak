Thingspeak::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # required by devise
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = true

  config.eager_load = false

  config.assets.prefix = "/assets"

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  config.assets.debug = false

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # See only warnings or higher in the log (default is :info)
  config.log_level = :warn

  # In production, Apache or nginx will already do this
  config.serve_static_assets = false

  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true
  config.assets.precompile =  ['*.js', '*.css', '*.css.erb'] 

  # Generate digests for assets URLs
  config.assets.digest = false

  # Defaults to Rails.root.join("public/assets")
  #config.assets.manifest = "/Volumes/Macintosh\ HD\ \(OLD\)/Users/fabiogbui/Sites/thingspeak/public/assets"

  config.assets.js_compressor  = :uglifier
  config.assets.css_compressor = :scss


end

