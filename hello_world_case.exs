defmodule Say do

    def hello(name) do
        case name do
	    "world" ->
             IO.puts("Arf")
             _ ->
             IO.puts("Hello " <> name)
        end
    end
end
Say.hello("world")
Say.hello("Alf")
