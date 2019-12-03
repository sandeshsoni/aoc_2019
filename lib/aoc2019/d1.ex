defmodule AOC2019.D1 do

  def part1 do
    input1
    |> Stream.map(&fuel_required_for(&1))
    |> sum
  end

  def part2(input) do
  end

  def input1 do
    path = "lib/aoc2019/D1/input1.txt"

    File.stream!(path)
    |> Stream.map(&String.trim(&1))
    |> Stream.map(&String.to_integer(&1))
  end

  # calculate fuel for given distance
   def fuel_required_for(distance) do
    reduce_by_2 = fn(x) -> (x - 2) end
    distance
    |> div(3)
    |> ceil
    |> reduce_by_2.()
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
