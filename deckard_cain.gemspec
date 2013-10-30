$:.push File.expand_path("../lib", __FILE__)
require "deckard_cain/version"

Gem::Specification.new do |s|
  s.name          = 'deckard_cain'
  s.version       = DeckardCain::VERSION
  s.date          = '2013-04-24'
  s.summary       = 'Stay a while and listen!'
  s.description   = 'Deckard cain knows everything about the Diablo 3 Community API'
  s.authors       = ["David Mills"]
  s.email         = 'dave@1morepx.com'
  s.files         = ["lib/deckard_cain.rb"]
  s.homepage      = 'http://rubygems.org/gems/deckard_cain'
end