def substrings(string, dictionary)
  matches = {}
  
  # Creates an array for the string input 
  string_array = string.split(" ")

  string_array.each { |string| 
    dictionary.each { |substring|
      # Case insensitive check for whether or not substring matches string 
      if string.downcase.include? substring.downcase
        # For the first entry, set as 1
        if matches[substring] == nil
          matches[substring] = 1
        else
          # For subsequent entries, add count
          matches[substring] += 1
        end
      end
    }
  }
  return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Enter string:"
string = gets.chomp

substrings(string, dictionary)
