IO.puts "Hello world from Elixir"

# basic types

#integer
IO.puts 1

#integer
IO.puts 0x1F

#float
IO.puts 1.0

#boolean
IO.puts true

#boolean
IO.puts false

#atom / symbol
IO.puts :atom

#string
IO.puts "Elixir"

#list
IO.inspect [1, 2, 3]

#tuple
IO.inspect {1, 2, 3}

#arithmetic operations

# plus
IO.puts 1 + 2
# times
IO.puts 5 * 5
# division (always float)
IO.puts 10/2
# division (always integer)
IO.puts div 10,3
# reminder
IO.puts rem 10,3

#I can use (or not) parentheses when invoking functions
IO.puts div(10,3)

#scientific notation support
IO.puts 1.0e10 * 1.0e3

#round and trunc functions
IO.puts round(3.58)
IO.puts trunc(3.58)