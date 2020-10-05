defmodule ProcessMath do
  def next_message do

    receive do
      {:+, {a,b}}->
        IO.puts("#{a} + #{b} = #{a+b}")
      {:-, {a,b}}->
        IO.puts("#{a} - #{b} = #{a+b}")
    end

    next_message()
  end
end



pid = spawn ProcessMath, :next_message, []

send pid, {:+, {10, 5} }
send pid, {:-, {10, 5} }

Process.exit(pid, :halt)
