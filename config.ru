__DIR__ = File.expand_path(File.dirname(__FILE__))
$: << __DIR__
require 'rubygems'
require 'bundler'

Bundler.require

require 'yaml'
require 'app'
App.set(:gollum_path, "~/apps/wiki")
App.set(:authorized_users, YAML.load_file(File.expand_path('users.yml', __DIR__)))
App.set(:wiki_options, { is_bare: true, h1_title: true })
run App
