require 'bundler/setup'
Bundler.require

require_relative '../app/application'

run Application.new
