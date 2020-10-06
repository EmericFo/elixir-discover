defmodule Chartreuse_shop do

  def next_message do
    receive do
      {:order, {product,quantity}, from_pid}->
        IO.puts("new order for #{quantity} chartreuse #{product} ")
        send from_pid, :order_ok

      {:alcool, "jaune", from_pid}->
            send from_pid, 42

      {:alcool, product, from_pid}->
        send from_pid, {"verte", "jaune"} # with map
        # extract fonction


    end
    next_message()
  end
end
