source 'https://rubygems.org'

platforms :ruby do
  group :development do
    gem "pry"
    gem "pry-doc"
    gem "redcarpet"
    gem "yard"
  end
end

group :test do
  gem "simplecov", require: false
  if ENV['CI']
    gem 'coveralls', require: false
  end
end

# Specify your gem's dependencies in erlang-terms.gemspec
gemspec
