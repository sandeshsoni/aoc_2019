defmodule AOC2019.Day1_test do
  use ExUnit.Case

  test "fuel for pat1" do
    assert AOC2019.D1.fuel_required_for(14) == 2
    assert AOC2019.D1.fuel_required_for(1969) == 654
  end

end
