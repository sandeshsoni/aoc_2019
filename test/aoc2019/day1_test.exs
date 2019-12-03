defmodule AOC2019.Day1_test do
  use ExUnit.Case

  test "fuel for pat1" do
    assert AOC2019.D1.fuel_required_for(14) == 2
    assert AOC2019.D1.fuel_required_for(1969) == 654
  end

  test "total fuel required - part2" do
    assert AOC2019.D1.total_fuel_required_for(1969) == 966
    assert AOC2019.D1.total_fuel_required_for(100756) == 50346
  end

end
