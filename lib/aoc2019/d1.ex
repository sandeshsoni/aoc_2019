defmodule AOC2019.D1 do

  def part1 do
    input1
    |> Stream.map(&fuel_required_for(&1))
    |> sum
  end

  def part2 do
    input1
    |> Stream.map(&total_fuel_required_for(&1))
    |> sum
  end

  def input1 do
    path = "lib/aoc2019/D1/input1.txt"

    File.stream!(path)
    |> Stream.map(&String.trim(&1))
    |> Stream.map(&String.to_integer(&1))
  end


  def total_fuel_required_for(mass) when(mass > 0) do
    fl = fuel_required_for(mass)
    fl + total_fuel_required_for(fl)
  end

  def total_fuel_required_for(mass) when (mass < 1) do
    0
  end

  # calculate fuel for given mass
  def fuel_required_for(mass) do
    reduce_by_2 = fn(x) -> (x - 2) end
    fuel = mass |> div(3) |> ceil |> reduce_by_2.()

    if fuel < 0 do
      0
    else
      fuel
    end
  end

  def sum(arr) do
    Enum.reduce(arr,
      fn(x), acc -> acc + x end)
  end

  def i1 do
    path = "lib/aoc2019/D1/input1.txt"

    File.stream!(path)
    |> Stream.map(&String.trim(&1))
    |> Stream.map(&String.to_integer(&1))
  end

end
