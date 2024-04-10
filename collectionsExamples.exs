defmodule ListModuleScript do

  def create_list do
    IO.puts("My list:")
    list = [3.14, :lista, "Hello world!"]
    IO.inspect(list)
  end

  def concatenate_list do
    firstList = [3.14, :lista, "Hello world!"]
    secondList = [1.61, :anotherList, "Goodbye world!"]
    finalList = firstList ++ secondList
    IO.puts("First list: ")
    IO.inspect(firstList)
    IO.puts("Second list: ")
    IO.inspect(secondList)
    IO.puts("Final list: ")
    IO.inspect(finalList)
  end

  def subtract_list do
    firstList = [1, 2, 3, 4, 5]
    secondList = [1, 3, 5]
    finalList = firstList -- secondList
    IO.puts("First list: ")
    IO.inspect(firstList)
    IO.puts("Second list: ")
    IO.inspect(secondList)
    IO.puts("Final list: ")
    IO.inspect(finalList)
  end

  def show_head_and_tail(list) do
    [head | tail] = list
    IO.puts("Head: ")
    IO.inspect(head)
    IO.puts("Tail: ")
    IO.inspect(tail)
  end

  def create_tuple do
    tuple = {3.14, :ok, "Hello world!"}
    IO.puts("Tuple: ")
    IO.inspect(tuple)
  end

  def read_file do
    case File.read("sampleTextFile.txt") do
      {:ok, content} -> IO.puts("File content: #{content}")
      {:error, reason} -> IO.puts("Error: #{reason}")
    end
  end

  def create_keyword_list do
    keywordList = [foo: "bar", hello: "world"]
    IO.puts("Keyword list: ")
    IO.inspect(keywordList)
  end

  def create_map do
    map = %{:foo => "bar", :hello => "world"}
    IO.puts("Map: ")
    IO.inspect(map)
  end

  def remove_odds(list) do
    IO.puts("Original list: ")
    IO.inspect(list)
    IO.puts("List without odds: ")
    IO.inspect(Enum.filter(list, fn(x) -> rem(x, 2) == 0 end))
  end

end

# ListModuleScript.create_list()
# ListModuleScript.concatenate_list()
# ListModuleScript.subtract_list()
# ListModuleScript.show_head_and_tail([1,2,3,4,5,6,7,8,9,10])
# ListModuleScript.create_tuple()
# ListModuleScript.read_file()
# ListModuleScript.create_keyword_list()
# ListModuleScript.create_map()
# ListModuleScript.remove_odds([1,2,3,4,5,6,7,8,9,10])
