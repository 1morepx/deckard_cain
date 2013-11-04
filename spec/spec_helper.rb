require 'json'
require 'coveralls'
Coveralls.wear!

require 'rspec'
require 'deckard_cain'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
  config.treat_symbols_as_metadata_keys_with_true_values = true
end