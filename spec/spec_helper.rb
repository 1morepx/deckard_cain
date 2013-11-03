require 'coveralls'
Coveralls.wear!

require 'rspec'
require 'deckard_cain'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end