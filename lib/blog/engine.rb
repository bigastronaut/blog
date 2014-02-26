require "truncate_html"
require "ckeditor"
require "select2-rails"
require "jquery-rails"
require "sass-rails"
require "coffee-rails"

module Blog
  class Engine < ::Rails::Engine
    isolate_namespace Blog
    engine_name 'blog'

    #config.generators.test_framework :rspec, view_specs: false, fixture: false
    #config.generators.stylesheets false
    #config.generators.fixture_replacement :factory_girl
    #config.generators.integration_tool :rspec
    #
    #initializer :assets do |config|
    #  Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
    #end

    initializer "blog.configuration", :before => :load_config_initializers do |app|
      app.config.blog = Blog::Configuration.new
      Blog::Config = app.config.blog
    end

    ENGINE_ROOT = File.join(File.dirname(__FILE__), '../..')
  end
end
