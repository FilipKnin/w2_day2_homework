require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish = Fish.new("Nemo")
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

def test_add_fish
  @river.add_fish(@fish)
  assert_equal([@fish], @river.fishes)
end
end
