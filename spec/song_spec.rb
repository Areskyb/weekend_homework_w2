require("minitest/autorun")
require('minitest/rg')
require_relative('../song.rb')

class TestGuest < MiniTest::Test

def setup()
@song1 = Song.new("hey Jude",true)
@song2 = Song.new("hello",true)
@song3 = Song.new("Fuck the police",false)
end


  def test_attr_works
    assert_equal('hey Jude', @song1.name)
    assert_equal(true, @song1.pg_13)


  end


end
