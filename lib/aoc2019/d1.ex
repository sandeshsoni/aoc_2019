defmodule AOC2019.D1 do

  # calculate fuel for given distance
  def part1(input) do
    reduce_by_2 = fn(x) -> (x - 2) end

    input
    |> div(3)
    |> ceil
    |> reduce_by_2.()
  end

  def sum(arr) do
    Enum.reduce(arr,
      fn(x), acc -> acc + x end)
  end

  def i1 do
    # path = "./D1/input1.txt"
    path = "lib/aoc2019/D1/input1.txt"
    # input = File
    # {:ok, file} = File.open("input1.txt")

    # {:ok, stream}
    # stream = File.stream!(path)


    inputs = File.stream!(path)
    |> Stream.map(&String.trim(&1))
    |> Stream.map(&String.to_integer(&1))

    # require IEx
    # IEx.pry
    # binding.pry

    inputs
    |> Stream.map(&part1(&1))
    |> sum
    # |> Stream.map(&part1(&1))
    # |> Stream.run

    # file
    # |> sum
    # stream file
  end

end
