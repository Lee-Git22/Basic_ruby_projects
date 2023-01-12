def caesar_cipher(message, shift_factor)
  cipher = ""

  # Caps shift_factor within 26 
  if shift_factor > 26
    shift_factor = shift_factor % 26
  end

  # Codepoint refers to ascii values of each letter
  message.chomp.each_codepoint { |letter|
      
    # Shift ascii value and keep within its original case range
      # For uppercase
      if (letter >= 65 && letter <= 90)
        letter += shift_factor
        if letter > 90
          letter = letter - 26
        end
      # For lowercase
      elsif (letter >= 97 && letter <= 122)
        letter += shift_factor
        if letter > 122
          letter = letter - 26
        end
      end
      
      # Convert ascii value back to char and add to cipher
      cipher = cipher + letter.chr
  }

  # Prints cipher
  puts cipher
end

puts "Enter message:"
message = gets

puts "Enter valid shift_factor:"
shift_factor = gets.to_i

# Prevents user from entering non integer values or shift factors that does not change message
while shift_factor == 0 || shift_factor == 26
    puts "Enter valid shift_factor:"
    shift_factor = gets.to_i
end

caesar_cipher(message, shift_factor)
