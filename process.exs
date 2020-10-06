pid = spawn fn ->
  receive do
    msg -> IO.inspect(msg)
  end
end

Process.alive? pid

send pid, "coucou"

Process.alive? pid

pid = spawn fn ->
  receive do
    {:sum, numbers} when is_list(numbers)->
      Enum.sum(numbers)
      |> IO.inspect(label: "sum result")
  end
end

send pid, {:sum, [1,2,3,4,5]}


:erlang.process_info self(), :messages
