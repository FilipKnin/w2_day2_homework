require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yoggy", "Grizzly")
    @fish = Fish.new("Nemo")
  end

def test_get_bear_name
  assert_equal("Yoggy", @bear.name)
end

def test_get_bear_type
  assert_equal("Grizzly", @bear.type)
end

end
