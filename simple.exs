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

#booleans
IO.puts true
IO.puts false
IO.puts is_boolean(true)
IO.puts is_boolean(1)

#atom : is a constant whose name is its own value
IO.puts :hello
IO.puts is_atom(true)
IO.puts is_atom(:false)

#strings
IO.puts byte_size("teste")
IO.puts String.length("hello")
IO.puts String.upcase("hello")
IO.puts String.downcase("hello")

#anonymous function
add = fn a,b -> a + b end
IO.puts add.(1,2) #the point indicates the anonymous function
IO.puts is_function(add)
IO.puts is_function(add,1)
IO.puts is_function(add,2)

#the anonymous function can access variables that are in scope (are closures)
double = fn a -> add.(a,a) end
IO.puts double.(2)
IO.puts double.(100)

#a variable assigned inside a function does not affect its surrounding environment
x = 42
(fn -> x = 0 end).()
IO.puts x #expected value: 42

#Lists

# values can be of any type
IO.inspect [1,2,true,3]
IO.puts length [1,2,3]
#concatenation
IO.inspect [1,2,3] ++ [4,5,6]
#substraction
IO.inspect [1, true, 2, 3] -- [true, false]
#The elixir data structures are immutables

#head of the list
IO.puts hd([1,2,3])
#tail of the list
IO.inspect tl([1,2,3])

#elixir can see it's a string
IO.puts [104, 101, 108, 108, 111]

# double quotes and single quotes representations are not equivalents
IO.puts 'hello' == "hello"
#single quotes are charlists, double quotes are strings

#Tuples
IO.inspect {:ok, "hello"}
IO.puts tuple_size {:ok, "hello"}
IO.puts elem({:ok, "hello"}, 1)
IO.inspect put_elem({:ok, "hello"}, 1, "world")

#List or tuples?
# list = linear access
# tuple = O(1) access, but update is expensive (because another tuple need to be created)
# list concatenation: whenever is possible first the smaller list, after the greater