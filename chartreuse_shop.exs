defmodule Chartreuse_shop do

  defp get_alcool_reference do
    %{
      "Verte" => 55,
      "ODF" => 45,
      "Liqueur" => 56
    }
  end

  def next_message do
    receive do
      {:order, {product,quantity}, from_pid}->
        IO.puts("new order for #{quantity} chartreuse #{product} ")
        send from_pid, :order_ok

      {:alcool, "jaune", from_pid}->
            send from_pid, 42

      {:alcool, product, from_pid}->

        result =  get_alcool_reference()
        |> Map.get(product, "Unknow references")

        send from_pid, {:has_degrees, result}
    end
    next_message()
  end

  def open do
    spawn Chartreuse_shop, :next_message, []
  end

end
