begin
  require File.join(File.dirname(__FILE__), '.bundle', 'environment')
rescue LoadError
  require 'bundler'
  Bundler.setup
end

Bundler.require

configure do
  set :app_file => 'app.rb'
  set :haml => {:format => :html5}
  enable :inline_templates
end
