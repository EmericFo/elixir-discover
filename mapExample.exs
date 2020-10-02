defmodule MapExample do

  def callAll() do
    getForcast() |> toFarenith() |> toMap()
  end

  defp getForcast() do
    %{
      "Monday" => 28,
      "Tuesday" => 29,
      "Wednesday" => 29,
      "Thursday" => 24,
      "Friday" => 16,
      "Saturday" => 16,
      "Sunday" => 20
    }
  end

  defp toFarenith(tempByDay) do
    Enum.map(tempByDay, fn ({day, temp}) -> {day, temp * 1.8 + 32} end)
  end

  defp toMap(list) do
    Enum.into(list, %{})
  end

end

MapExample.callAll() |> IO.inspect()
