defmodule Hello_world_pattern_matching do

    def hello("world") do
        IO.puts("arf")
    end

    def hello(name) do
         IO.puts("Hello " <> name)
    end
end

Hello_world_pattern_matching.hello("world")
Hello_world_pattern_matching.hello("Alf")
