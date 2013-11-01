$:.push File.expand_path("../lib", __FILE__)
require "cain/version"

Gem::Specification.new do |s|
  s.name          = 'deckard_cain'
  s.version       = Cain::VERSION
  s.date          = '2013-04-24'
  s.summary       = 'Stay a while and listen!'
  s.description   = 'Deckard Cain knows everything about the Diablo 3 Community API'
  s.authors       = ["David Mills"]
  s.email         = 'dave@1morepx.com'
  s.files         = ["lib/deckard_cain.rb"]
  s.homepage      = 'http://rubygems.org/gems/deckard_cain'
  s.add_development_dependency 'rspec', '~> 2.14'
end