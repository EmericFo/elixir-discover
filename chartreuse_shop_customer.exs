defmodule Chartreuse_shop_customer do

  def shop_answer do
    receive do

      :order_ok ->
        IO.puts "[#{inspect self}] command ok"
      42 ->
        IO.puts "Universal answer"
        _ ->
          IO.puts "don't know what to do"
    end
    shop_answer()
  end
end
