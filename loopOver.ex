defmodule LoopOver do

    def this_list([]), do: IO.puts "DONE"

    def this_list([head|tail]) do
        IO.puts head
        this_list(tail)
    end
end

LoopOver.this_list([1,2,3])
