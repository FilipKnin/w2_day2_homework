require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yoggy", "Grizzly")
    @fish = Fish.new("Nemo")
    @fish2 = Fish.new("Sammy")
    @river = River.new("Amazon")
  end

def test_get_bear_name
  assert_equal("Yoggy", @bear.name)
end

def test_get_bear_type
  assert_equal("Grizzly", @bear.type)
end

def test_take_fish_from_the_river__stomach
@river.add_fish(@fish)
@river.add_fish(@fish2)
@bear.take_fish(@river, @fish)
assert_equal([@fish],@bear.stomach)
end

def test_take_fish_from_the_river__fishes
@river.add_fish(@fish)
@river.add_fish(@fish2)
@bear.take_fish(@river, @fish)
assert_equal([@fish2],@river.fishes)
end

end
