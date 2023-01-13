This is a collection of basic programming projects written Ruby from The Odin Project for the Basic Ruby course.

Caesar cipher: A method that takes in a string message and a shift factor and outputs an encrypted message.
  - Added a feature to allow user to enter their own message and shift factor throught the CLI
  - Added checks to ensure a valid shift factor

Substrings: A method that takes in a string and a dictionary (an array of valid substrings) and return a hash listing each substring that was found and the number of times it was found.
  - Made sure user string input is checked with substrings case insensitively

Stockpicker: A method that takes an array of stock prices for each day and returns a pair of days representing the best day to buy and sell for highest profits.
  - Used two loops to iterate over every index pairing to find the highest profit pairing
  - Realized I had to converted array elements to integers before subtracing here `current_profit = stocks[sell_index].to_i - stocks[buy_index].to_i`