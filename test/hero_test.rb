require 'test/unit'
require 'deckard_cain'
require 'deckard_cain/hero'

class HeroTest   < Test::Unit::TestCase
  def test_gender_mutator
    male = DeckardCain::Hero.new
    male.gender = 0

    female = DeckardCain::Hero.new
    female.gender = 1

    assert_equal male.gender   , :male
    assert_equal female.gender , :female
  end

  def test_last_updated_mutator
    hero = DeckardCain::Hero.new
    hero.last_updated = 1365373956

    assert_equal hero.last_updated.year   , 2013
    assert_equal hero.last_updated.month  , 4
    assert_equal hero.last_updated.day    , 7
    assert_equal hero.last_updated.hour   , 22
    assert_equal hero.last_updated.minute , 32
    assert_equal hero.last_updated.second , 36
  end

  def test_class_converts_to_symbol
    hero = DeckardCain::Hero.new
    hero.class = "demon-hunter"

    assert_equal hero.class , :demon_hunter
  end
end