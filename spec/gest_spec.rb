
require("minitest/autorun")
require('minitest/rg')

require_relative('../gest.rb')

class TestGuest < MiniTest::Test


  def setup()
  @gest1 = Gest.new("Richard",21,80,"hey Jude")
  @gest2 = Gest.new("Alfred", 50,1203,"hey Jude")
  end

  def test_attr_works
    assert_equal("Richard",@gest1.name)
    assert_equal(21,@gest1.age)
    assert_equal(80,@gest1.wallet)
  end

end
