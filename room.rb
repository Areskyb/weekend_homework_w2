class Room

attr_accessor :songs, :gests,:capacity,:till

def initialize(capacity,till)
@songs = Array.new()
@gests = Array.new()
@capacity = capacity
@till = till
end


def add_songs(songs)
  songs.kind_of?(Array) ? songs.each{ |song| @songs.push(song)} : @songs.push(songs)
end


def check_in_one_person(gest,karaoke)
  if (karaoke.wating_room.length == 0)
    @gests.push(gest)
  else
    karaoke.wating_room.push(gest)
  end
end

def check_in(gests,karaoke)

  if (@capacity >= gests.length)
    #in this case check if the wating room is empty and if is not push first the wating gests
    if (karaoke.wating_room.length == 0)
    #ask if there is just one person in the gests parameter
    gests.kind_of?(Array) ? gests.each{|gest| @gests.push(gest)} : @gests.push(gests)
    else
      karaoke.wating_room.unshift(gests)
      karaoke.wating_room[-1].each{ |gest| @gests.push(gest)}
    end
  else
    karaoke.wating_room.push(gests)
  end
end

end
