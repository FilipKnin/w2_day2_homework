require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yoggy", "Grizzly")
  end

def test_get_bear_name
  assert_equal("Yoggy", @bear.name)
end

def test_get_bear_type
  assert_equal("Grizzly", @bear.type)
end

end
