def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |e, i|
    puts "#{i + 1}. #{e}"
  }
end

def play(songs)
  
  msg = "Invalid input, please try again"
  puts "Please enter a song name or number:"
  
  u_input = gets.strip
  
  songs.each_with_index { |e, i|
    if u_input == "#{i + 1}" || u_input == "#{songs[i]}"
      msg = "Playing #{songs[i]}"
      break
    end
  }
  
  puts msg
end

def exit_jukebox
  
  puts "Goodbye"
  
end

def run(songs)
  
  puts "Please enter a command:"
  u_input = gets.strip
  
    if u_input == "help"
      help
      run(songs)
    elsif u_input == "list"
      list(songs)
      run(songs)
    elsif u_input == "play"
      play(songs)
      run(songs)
    elsif u_input == "exit"
      exit_jukebox
    else
      run(songs)
    end

end