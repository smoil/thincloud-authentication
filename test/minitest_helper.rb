if RUBY_ENGINE == "ruby"
  begin
    require "simplecov"
    SimpleCov.start "rails" do
      add_filter do |src_file|
        src_file.filename.match /test|config|vendor|\.bundle/
      end
      command_name "MiniTest"
    end
  rescue LoadError
    warn "unable to load SimpleCov"
  end
end

ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment",  __FILE__)

require "minitest/autorun"
require "minitest/rails"
require "minitest/pride"
require "minitest-rails-shoulda"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
