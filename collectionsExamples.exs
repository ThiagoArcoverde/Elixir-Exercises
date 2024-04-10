defmodule ListModuleScript do

  def createList do
    IO.puts("My list:")
    list = [3.14, :lista, "Hello world!"]
    IO.inspect(list)
  end

  def concatenateList do
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

  def subtractList do
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

  def showHeadAndTail(list) do
    [head | tail] = list
    IO.puts("Head: ")
    IO.inspect(head)
    IO.puts("Tail: ")
    IO.inspect(tail)
  end

  def createTuple do
    tuple = {3.14, :ok, "Hello world!"}
    IO.puts("Tuple: ")
    IO.inspect(tuple)
  end

  def readFile do
    case File.read("sampleTextFile.txt") do
      {:ok, content} -> IO.puts("File content: #{content}")
      {:error, reason} -> IO.puts("Error: #{reason}")
    end
  end

  def createKeywordList do
    keywordList = [foo: "bar", hello: "world"]
    IO.puts("Keyword list: ")
    IO.inspect(keywordList)
  end

  def createMap do
    map = %{:foo => "bar", :hello => "world"}
    IO.puts("Map: ")
    IO.inspect(map)
  end

  def removeOdds(list) do
    IO.puts("Original list: ")
    IO.inspect(list)
    IO.puts("List without odds: ")
    IO.inspect(Enum.filter(list, fn(x) -> rem(x, 2) == 0 end))
  end

end

# ListModuleScript.createList()
# ListModuleScript.concatenateList()
# ListModuleScript.subtractList()
# ListModuleScript.showHeadAndTail([1,2,3,4,5,6,7,8,9,10])
# ListModuleScript.createTuple()
# ListModuleScript.readFile()
# ListModuleScript.createKeywordList()
# ListModuleScript.createMap()
# ListModuleScript.removeOdds([1,2,3,4,5,6,7,8,9,10])
