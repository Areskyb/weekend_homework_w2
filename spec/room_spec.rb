
require("minitest/autorun")
require('minitest/rg')

require_relative('../gest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test


  def setup()
  @gest1 = Gest.new("Richard",21,80,"hey Jude")
  @gest2 = Gest.new("Alfred", 50,15,"hey Jude")
  @gest3 = Gest.new("Musolini", 50,12703,"hey Jude")
  @gest4 = Gest.new("Omar", 50,67,"hey Jude")
  @gests = [@gest1,@gest2,@gest3,@gest4,]

  @song1 = Song.new("hey Jude",true)
  @song2 = Song.new("hello",true)
  @song3 = Song.new("Fuck the police",false)
  @song_list = [@song1,@song2,@song3]

  @room1 = Room.new(6,0)

  end

  def test_add_songs
    @room1.add_songs(@song_list)
    assert_equal(3,@room1.songs.length)
  end

  def test_add_songs_if_one_song
    @room1.add_songs(@song1)
    assert_equal(1,@room1.songs.length)
  end


  def test_check_in
    @room1.check_in(@gests)
    assert_equal(4,@room1.gests.length)

  end

  def test_check_in_if_one_gest
    @room1.check_in(@gest1)
    assert_equal(1,@room1.gests.length)

  end

end
