require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Databook
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.i18n.available_locales = %w(cs sk)
    config.i18n.default_locale = :cs
    config.encoding = "utf-8"
    config.time_zone = 'Prague'

    #config.assets.precompile += Ckeditor.assets
    #config.assets.precompile += %w( ckeditor/* )
    #config.autoload_paths += %W(#{config.root}/app/models/ckeditor)

  end
end
