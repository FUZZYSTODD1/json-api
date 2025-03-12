source "https://rubygems.org"

# http://jekyllrb.com/docs/github-pages/
require 'json'
require 'uri'
require 'open-uri'
versions =
  begin
    JSON.parse(URI.parse('https://pages.github.com/versions.json').open.read)
  rescue SocketError
    { 'github-pages' => 67 }
  end

gem 'github-pages', versions['github-pages']

gem "rake", "~> 13.0"
gem "rb-fsevent", "~> 0.9"
gem "compass", "~> 1.0"
gem "sass", "~> 3.4"
gem "launchy", "~> 3.0"
gem "redcard", "~> 1.0"
