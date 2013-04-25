require 'date'

class DeckardCain::Hero

  attr_accessor :name, :id, :level, :gender, :hardcore, :last_updated, :dead, :paragon_level, :class

  def gender= value
    @gender = value.zero? ? :male : :female
  end

  def last_updated= value
    @last_updated = DateTime.strptime("#{value}", '%s')
  end

  def class= value
    value = value.gsub(/-/, '_')
    @class = value.to_sym
  end

end