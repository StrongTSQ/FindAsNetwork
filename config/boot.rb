require 'rubygems'
require 'net/http'
require 'uri'
require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'getoptlong'
# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
