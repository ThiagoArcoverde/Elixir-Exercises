
defmodule EnumModule do
  # Applies the function to each element of the list and returns true if all elements satisfy the condition
  def allFunction do
    list = ["foo", "bar", "abc"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("All elements have 3 characters:")
    IO.puts(Enum.all?(list, fn x -> String.length(x) == 3 end))
    IO.puts("All elements have more than 1 character:")
    IO.puts(Enum.all?(list, fn x -> String.length(x) > 1 end))
  end

  def anyFunction do
    # Applies the function to each element of the list and returns true if at least one element satisfies the condition
    list = ["foo", "bar", "abc", "hello", "world"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Any element has 3 characters:")
    IO.puts(Enum.any?(list, fn x -> String.length(x) == 3 end))
    IO.puts("Any element has more than 5 characters:")
    IO.puts(Enum.any?(list, fn x -> String.length(x) > 5 end))
  end

  def chunkEveryFunction do
    # Splits the list into sublists of the specified size
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Chunked list:")
    IO.inspect(Enum.chunk_every(list, 3), charlists: :as_list)
  end

  def chunkByFunction do
    # Splits the list into sublists based on the function
    list = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Chunked by string length list:")
    IO.inspect(Enum.chunk_by(list, fn x -> String.length(x) end), charlists: :as_list)
  end

  def mapEveryFunction do
    # Applies the function to ever Nth element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List multiplied by 2: ")
    IO.inspect(Enum.map_every(list, 1, fn x -> x * 2 end))
  end

  def eachFunction do
    # Iterates over each element of the list and applies the function
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    Enum.each(list, fn x -> IO.puts("Element: #{x}") end)
  end

  def mapFunction do
    # Applies the function to each element of the list and returns a new list with the results
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("list multiplied by 10: ")
    IO.inspect(Enum.map(list, fn x -> x * 10 end))
  end

  def min1Function do
    # Returns the minimum element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Minimum element: ")
    IO.inspect(Enum.min(list))
  end

  def min2Function do
    # does the same as min1 but allows us to specify a function in case the enumerable is empty to return a default value
    list = []
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Minimum element: ")
    IO.inspect(Enum.min(list, fn -> 0 end))
  end

  def max1Function do
    # Returns the maximum element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Maximum element: ")
    IO.inspect(Enum.max(list))
  end

  def max2Function do
    # does the same as max1 but allows us to specify a function in case the enumerable is empty to return a default value
    list = []
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Maximum element: ")
    IO.inspect(Enum.max(list, fn -> 0 end))
  end

  def filterFunction do
    # Returns a new list with the elements that satisfy the condition
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Even elements: ")
    IO.inspect(Enum.filter(list, fn x -> rem(x, 2) == 0 end))
  end

  def reduceFunction do
    # Applies the function to each element of the list and returns the accumulated value
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Sum of elements: ")
    IO.inspect(Enum.reduce(list, 0, fn x, acc -> x + acc end))
  end

  def sort1Function do
    # Returns a new list with the elements sorted using the Erlang's term ordering
    list = [5, 3, 1, 4, 2]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Sorted list: ")
    IO.inspect(Enum.sort(list))
  end

  def sort2Function do
    # Returns a new list with the elements sorted using the provided function of our own, we can also
    # define if we want the list to be sorted in ascending or descending order instead of providing a function
    list = [5, 3, 1, 4, 2]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Sorted list providing a function: ")
    IO.inspect(Enum.sort(list, fn x, y -> x > y end))
    IO.puts("Sorted list providing its order(asc): ")
    IO.inspect(Enum.sort(list, :asc))
  end

  def uniqFunction do
    # Returns a new list removing the duplicates
    list = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List without duplicates: ")
    IO.inspect(Enum.uniq(list))
  end

  def uniqByFunction do
    # Returns a new list removing the duplicates based on the function we provied
    list = ["foo", "bar", "abc", "hello", "world"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List without words of the same length: ")
    IO.inspect(Enum.uniq_by(list, fn x -> String.length(x) end))
  end

  def captureOperatorFunction do
    # the capture operator (&), captures each iterable element and applies the function to it
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List multiplied by 10: ")
    IO.inspect(Enum.map(list, &(&1 * 10)))
  end

  def multipliedBy10(number) do
    number * 10
  end

  def captureOperatorNamedFunction do
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List multiplied by 10: ")
    # for a most succinct syntax, we can directly call the named function without explicitly capturing the variable
    IO.inspect(Enum.map(list, &EnumModule.multipliedBy10/1))
  end

end

# EnumModule.allFunction()
# EnumModule.anyFunction()
# EnumModule.chunkEveryFunction()
# EnumModule.chunkByFunction()
# EnumModule.mapEveryFunction()
# EnumModule.eachFunction()
# EnumModule.mapFunction()
# EnumModule.min1Function()
# EnumModule.min2Function()
# EnumModule.max1Function()
# EnumModule.max2Function()
# EnumModule.filterFunction()
# EnumModule.reduceFunction()
# EnumModule.sort1Function()
# EnumModule.sort2Function()
# EnumModule.uniqFunction()
# EnumModule.uniqByFunction()
# EnumModule.captureOperatorFunction()
EnumModule.captureOperatorNamedFunction()
