defmodule ListLength do
  def call(list), do: size(list, 0)

  defp size([], accumulator), do: accumulator
  defp size([_hd | tl], accumulator) do
    accumulator = accumulator + 1 
    size(tl, accumulator)
  end
end
