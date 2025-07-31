source "https://rubygems.org"

# Use stable Rails version
gem "rails", "~> 8.0.2"

# Asset pipeline
gem "propshaft"

# Use PostgreSQL for all environments (including production)
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript tools
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON builder
gem "jbuilder"

# Authentication
gem "devise"

# Required for Ruby 3.5+ (avoids fiddle warning)
gem "fiddle"

# Caching, queuing, and real-time features
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance
gem "bootsnap", require: false
gem "thruster", require: false

# Container deployment tool (optional)
gem "kamal", require: false

# Windows platform-specific support
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Development and test tools
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# ✅ Ensures PostgreSQL is used in production (already covered above)
# gem 'pg', group: :production  ← NO NEED to add again if it's outside any group
