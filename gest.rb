
class Gest

  attr_reader :name,:age,:wallet, :favourite_song

def  initialize(name,age,wallet,favourite_song)

  @name = name
  @age = age
  @wallet = wallet
  @favourite_song = favourite_song
  end

  def check_disk_library(room)
    room.songs.each{ |song| return 'Whoo yeahh' if song.name == @favourite_song }
  end
end
