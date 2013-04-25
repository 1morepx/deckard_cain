require 'test/unit'
require 'deckard_cain'
require 'deckard_cain/hero'

class HeroTest   < Test::Unit::TestCase
  def test_hero_gender_set
    male = Hero.new
    male.gender = 0

    female = Hero.new
    female.gender = 1

    assert_equal male.gender, :male
    assert_equal female.gender, :female
  end
end