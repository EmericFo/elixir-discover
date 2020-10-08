# in iex try line by line in order to understand the langage
a = [1,2]   # liste
b = {1,2}   # tuple
[1,2]= a
a = [1,3]

[1,3] = a

[1, a] = [2, 3]
[2, a] = [2, 3]
a

[^a, 2, 3] = [1, 2, 3]
[^a, 2, 3] = [3, 2, 3]
[a, 2, 3] = [1, 2, 3]

a = [1,3]
[2, ^a] = [2, 3]
[2, ^a] = [2, [1,3]]
[2, a] = [2, [1,"truc"]]


[head|tail]=[1,2,3]
1= head
[2,3]=tail

list=[1|[2|[3|[]]]]
[0| list]
list
list = [0| list]
list

[head|_]=[1,2,3]
_

malist = [:zero, 2, 1, 1]
List.delete(malist, 1)
malist
List.<Tabulation>

h List
h List.pop_at

montuple = {1,2,3}
elem(montuple, 2)

h Tuple

{a,b,c} = {:hello, "world", 42}
b

klist = [a: 1, b: 2, a: 3] # Keyword list
klist[:b] # la clef est un atom
Keyword.get(klist, :a)
Keyword.get_values(klist, :a)

izzy = %{name: "Izzy", age: "30ish", gender: "Female"}  # It's a Map
izzy[:age]
Enum.each(izzy, fn ({key, value}) -> IO.puts value end)

Map.put(izzy, "age", "40ish")
izzy |> Map.put("country", "somewhere")
izzy # que vaut izzy ?
izzy |> Map.put("country", "somewhere") |> Map.put("country", "here")
Map.merge(izzy, %{:age => "40ish", "country" => "Australia"})



forecast = %{
  "Monday" => 28,
  "Tuesday" => 29,
  "Wednesday" => 29,
  "Thursday" => 24,
  "Friday" => 16,
  "Saturday" => 16,
  "Sunday" => 20
} # map
Enum.map(forecast, fn ({day, temp}) -> {day, temp * 1.8 + 32} end) # list
Enum.into(Enum.map(forecast, fn ({day, temp}) -> {day, temp * 1.8 + 32} end), %{})  # back to map
