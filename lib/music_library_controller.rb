require "pry"
class MusicLibraryController

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

def call
  puts "Welcome to your music library!"
  puts "To list all of your songs, enter 'list songs'."
  puts "To list all of the artists in your library, enter 'list artists'."
  puts "To list all of the genres in your library, enter 'list genres'."
  puts "To list all of the songs by a particular artist, enter 'list artist'."
  puts "To list all of the songs of a particular genre, enter 'list genre'."
  puts "To play a song, enter 'play song'."
  puts "To quit, type 'exit'."
  puts "What would you like to do?"
<<<<<<< HEAD

  answer = ""
while answer != "exit"
  answer = gets.chomp
  case answer
  when "list songs"
    list_songs
  when "list artists"
    list_artists
  when "list genres"
    list_genres
  when "list artist"
    list_songs_by_artist
  when "list genre"
    list_songs_by_genre
  when "play song"
    play_song
  end
end
end

=======
  answer = gets
  if answer != "exit"
     call
 end
 end
>>>>>>> 27b36d704c5a056acf4896d1ed1fce6958341862

 def list_songs
   Song.all.sort{ |a, b| a.name <=> b.name }.each.with_index do |s, i|
   puts "#{i+1}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
 end
 end
def list_genres
   Genre.all.sort{ |a, b| a.name <=> b.name }.each.with_index do |g, i|
   puts "#{i+1}. #{g.name}"
 end
 end
 def list_artists
   Artist.all.sort{ |a, b| a.name <=> b.name }.each.with_index do |a, i|
   puts "#{i+1}. #{a.name}"
 end
<<<<<<< HEAD
=======
end
def list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.strip
    Artist.all.each do |artist_object|
      if artist_object.name == input
        artist_object.songs.sort_by{|song_object| song_object.name}.each_with_index do |song_obj,index|
          puts "#{index + 1}. #{song_obj.name} - #{song_obj.genre.name}"
        end
      end
    end
  end
def list_songs_by_genre
   puts "Please enter the name of a genre:"
   input = gets.chomp
   Genre.all.each do |genre_object|
     if genre_object.name == input
       genre_object.songs.sort_by{|song_object| song_object.name}.each_with_index do |song_object,index|
         puts "#{index + 1}. #{song_object.artist.name} - #{song_object.name}"
       end
     end
   end
 end

def play_song
  puts "Which song number would you like to play?"
  number = gets.chomp
  if Song.all.include?(number)
    number.play_song
end
>>>>>>> 27b36d704c5a056acf4896d1ed1fce6958341862
end
def list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.strip
    Artist.all.each do |artist_object|
      if artist_object.name == input
        artist_object.songs.sort_by{|song_object| song_object.name}.each_with_index do |song_obj,index|
          puts "#{index + 1}. #{song_obj.name} - #{song_obj.genre.name}"
        end
      end
    end
  end
def list_songs_by_genre
   puts "Please enter the name of a genre:"
   input = gets.chomp
   Genre.all.each do |genre_object|
     if genre_object.name == input
       genre_object.songs.sort_by{|song_object| song_object.name}.each_with_index do |song_object,index|
         puts "#{index + 1}. #{song_object.artist.name} - #{song_object.name}"
       end
     end
   end
 end

def play_song
    puts "Which song number would you like to play?"

    input = gets.chomp.to_i
    if (1..Song.all.length).include?(input)
      song = Song.all.sort{ |a, b| a.name <=> b.name }[input - 1]
    end

    puts "Playing #{song.name} by #{song.artist.name}" if song
  end
end
 
