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

def check_in( gests)

  gests.kind_of?(Array) ? gests.each{|gest| @gests.push(gest)} : @gests.push(gests)
end




end
