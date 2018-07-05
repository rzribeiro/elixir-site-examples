#list concatenation
IO.inspect [1,2,3] ++ [4,5,6]
#list substraction
IO.inspect [1, true, 2, 3] -- [true, false]
#string concatenation
IO.puts "foo" <> "bar"
#boolean operations
IO.puts true and false
IO.puts true or false
#short circuit
IO.puts true or raise("Testing short circuit")
IO.puts false and raise("Testing short circuit")

IO.puts 1 || true
IO.puts false || 11

IO.puts nil && 13
IO.puts true && 17

IO.puts !true
IO.puts !1
IO.puts !nil

IO.puts 1 == 1
IO.puts 1 != 2
IO.puts 1 < 2

IO.puts 1 == 1.0
IO.puts 1 === 1.0