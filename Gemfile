# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in radwimps.gemspec
gemspec

gem "rake", "~> 13.0"

group "test", optional: true do
  gem "rspec", "~> 3.11"
  gem "steep", "~> 0.49.1"

  gem "activesupport", "~> 6"  # https://github.com/soutaro/steep/issues/466
end
