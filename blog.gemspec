$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blog"
  s.version     = Blog::VERSION
  s.authors     = ["Big Astonaut | @BigAstonaut"]
  s.email       = ["info@bigastronaut.com"]
  s.homepage    = "http://github.com/bigastonaut/blog"
  s.summary     = "Mountable blog engine designed for Big Astronaut Rails CMS."
  s.description = "Mountable blog engine designed for Big Astronaut Rails CMS."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "bcrypt-ruby", '~> 3.1.2'
  s.add_dependency "coffee-rails",'~> 4.0.0'
  s.add_dependency "sass-rails",'~> 4.0.0'
  s.add_dependency "truncate_html"
  s.add_dependency "jquery-rails"
  s.add_dependency "ckeditor"
  s.add_dependency "select2-rails", "~> 3.2"
  s.add_dependency "haml-rails"
  s.add_dependency "fog"
  s.add_dependency "mini_magick"
  s.add_dependency "carrierwave"

  s.add_development_dependency "pg"
end
