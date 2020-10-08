defmodule Hello_world_case do

    def hello(name) do
        case name do
	    "world" ->
             IO.puts("Arf")
            _ ->
             IO.puts("Hello " <> name)
        end
    end
end
Hello_world_case.hello("world")
Hello_world_case.hello("Alf")
