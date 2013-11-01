require 'cain/version'
require 'cain/career'

class DeckardCain
  def self.version_string
    "Deckard Cain version #{Cain::VERSION}"
  end

  def self.fetch_career battle_tag
    Cain::Career.new battle_tag
  end

end