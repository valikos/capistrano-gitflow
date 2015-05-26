# require 'capistrano'
require File.join(File.dirname(__FILE__), 'gitflow', 'natcmp')
require 'stringex'

require 'capistrano/version'

if defined?(Capistrano::VERSION) && Capistrano::VERSION.to_s.split('.').first.to_i >= 3
  load File.expand_path("../tasks/gitflow.rake", __FILE__)
else
  require 'gitflow/recipes/capistrano_legacy'
end
