defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the size" do
      size = [1,2,4,6,3,"dsadas"]
             |> ListLength.call
      expected_size = 6

      assert expected_size == size
    end

    test "returns the size 0 when send nothing" do
      size = []
             |> ListLength.call
      expected_size = 0

      assert expected_size == size
    end

    test "returns the size when send chars" do
      size = 'rodrigo'
             |> ListLength.call
      expected_size = 7

      assert expected_size == size
    end
  end
end
