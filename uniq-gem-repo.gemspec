# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'version'
 
Gem::Specification.new do |s|
  s.name        = "uniq-gem-repo"
  s.version     = UniqGemRepo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ivan Kasatenko"]
  s.email       = ["sky@uniqsystems.ru"]
  s.homepage    = "http://github.com/uniqsys/Corporate-Gem-Server-Utility"
  s.summary     = "Simple utility to manage UNIQ Systems corporate gem repository"
  s.description = "Simple utility to manage UNIQ Systems corporate gem repository, makes it easier to upload gems to the local gem repository."
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_dependency "rest-client"
  s.add_dependency "yajl-ruby"
  s.add_dependency "colorize"
  s.add_development_dependency "rake"
 
  s.files        = Dir.glob("{bin,lib}/**/*")
  s.executables  = ['uniq-gem-repo']
  s.require_path = 'lib'
end