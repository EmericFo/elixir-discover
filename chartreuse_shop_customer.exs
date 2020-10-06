defmodule Chartreuse_shop_customer do

  def shop_answer do
    receive do

      :order_ok ->
        IO.puts "[#{inspect self}] command ok"
      {:has_degrees, degrees} ->
        IO.puts "[#{inspect self}] #{degrees}"
      42 ->
        IO.puts "[#{inspect self}] Universal answer"
        _ ->
          IO.puts "[#{inspect self}] don't know what to do"
    end
    shop_answer()
  end

  def new_customer do
    spawn Chartreuse_shop_customer, :shop_answer, []
  end
end
