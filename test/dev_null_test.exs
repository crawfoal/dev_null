defmodule DevNullTest do
  use ExUnit.Case
  doctest DevNull

  test "greets the world" do
    assert DevNull.hello() == :world
  end
end
