
require("minitest/autorun")
require('minitest/rg')
require('pry')

require_relative('../gest.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../karaoke.rb')

class TestRoom < MiniTest::Test


  def setup()
    @gest1 = Gest.new("Richard",21,80,"hey Jude")
    @gest2 = Gest.new("Alfred", 50,15,"hey Jude")
    @gest3 = Gest.new("Musolini", 50,12703,"hey Jude")
    @gests1 = [@gest1,@gest2,@gest3,@gest4,]

    @gest5 = Gest.new("Riard",69,80,"hey Jude")
    @gest6 = Gest.new("gfred", 70,15,"hey Jude")
    @gest7 = Gest.new("Muggini", 30,12703,"hey Jude")
    @gest8 = Gest.new("Omare", 5,67,"hey Jude")
    @gests2 = [@gest5,@gest6,@gest7,@gest8,]

    @song1 = Song.new("hey Jude",true)
    @song2 = Song.new("hello",true)
    @song3 = Song.new("Fuck the police",false)
    @songs = [@song1,@song2,@song3]

    @room1 = Room.new(6,0)
    @room2 = Room.new(5,0)
    @room3 = Room.new(6,0)
    @room4 = Room.new(3,0)

    @room1.add_songs(@song1)
    @room1.add_songs(@song2)
    @room2.add_songs(@song1)
    @room3.add_songs(@song1)
    @room4.add_songs(@song1)

    @rooms = [@room1,@room2,@room3,@room4]

    @karaoke = Karaoke.new(@rooms,@gests,0)
  end

  def test_add_songs
    assert_equal(2,@room1.songs.length)
  end

  def test_add_songs_if_one_song
    assert_equal(1,@room2.songs.length)
  end


  def test_check_in
    @room1.check_in(@gests1,@karaoke)
    assert_equal(4,@room1.gests.length)

  end

  def test_check_wating_room
    @room4.check_in(@gests2,@karaoke)
    assert_equal(1,@karaoke.wating_room.length)

    @room2.check_in(@gests1,@karaoke)
    assert_equal(4,@room2.gests.length)
  end

end
