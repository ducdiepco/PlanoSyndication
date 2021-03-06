require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PlanomaticSyndication
  class Application < Rails::Application
    config.load_defaults 5.2

    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
