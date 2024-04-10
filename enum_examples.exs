
defmodule EnumModule do
  # Applies the function to each element of the list and returns true if all elements satisfy the condition
  def all_function do
    list = ["foo", "bar", "abc"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("All elements have 3 characters:")
    IO.puts(Enum.all?(list, fn x -> String.length(x) == 3 end))
    IO.puts("All elements have more than 1 character:")
    IO.puts(Enum.all?(list, fn x -> String.length(x) > 1 end))
  end

  def any_function do
    # Applies the function to each element of the list and returns true if at least one element satisfies the condition
    list = ["foo", "bar", "abc", "hello", "world"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Any element has 3 characters:")
    IO.puts(Enum.any?(list, fn x -> String.length(x) == 3 end))
    IO.puts("Any element has more than 5 characters:")
    IO.puts(Enum.any?(list, fn x -> String.length(x) > 5 end))
  end

  def chunk_every_function do
    # Splits the list into sublists of the specified size
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Chunked list:")
    IO.inspect(Enum.chunk_every(list, 3), charlists: :as_list)
  end

  def chunk_by_function do
    # Splits the list into sublists based on the function
    list = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Chunked by string length list:")
    IO.inspect(Enum.chunk_by(list, fn x -> String.length(x) end), charlists: :as_list)
  end

  def map_every_function do
    # Applies the function to ever Nth element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List multiplied by 2: ")
    IO.inspect(Enum.map_every(list, 1, fn x -> x * 2 end))
  end

  def each_function do
    # Iterates over each element of the list and applies the function
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    Enum.each(list, fn x -> IO.puts("Element: #{x}") end)
  end

  def map_function do
    # Applies the function to each element of the list and returns a new list with the results
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("list multiplied by 10: ")
    IO.inspect(Enum.map(list, fn x -> x * 10 end))
  end

  def min1_function do
    # Returns the minimum element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Minimum element: ")
    IO.inspect(Enum.min(list))
  end

  def min2_function do
    # does the same as min1 but allows us to specify a function in case the enumerable is empty to return a default value
    list = []
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Minimum element: ")
    IO.inspect(Enum.min(list, fn -> 0 end))
  end

  def max1_function do
    # Returns the maximum element of the list
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Maximum element: ")
    IO.inspect(Enum.max(list))
  end

  def max2_function do
    # does the same as max1 but allows us to specify a function in case the enumerable is empty to return a default value
    list = []
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Maximum element: ")
    IO.inspect(Enum.max(list, fn -> 0 end))
  end

  def filter_function do
    # Returns a new list with the elements that satisfy the condition
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Even elements: ")
    IO.inspect(Enum.filter(list, fn x -> rem(x, 2) == 0 end))
  end

  def reduce_function do
    # Applies the function to each element of the list and returns the accumulated value
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Sum of elements: ")
    IO.inspect(Enum.reduce(list, 0, fn x, acc -> x + acc end))
  end

  def sort1_function do
    # Returns a new list with the elements sorted using the Erlang's term ordering
    list = [5, 3, 1, 4, 2]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("Sorted list: ")
    IO.inspect(Enum.sort(list))
  end

  def sort2_function do
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

  def uniq_function do
    # Returns a new list removing the duplicates
    list = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List without duplicates: ")
    IO.inspect(Enum.uniq(list))
  end

  def uniq_by_function do
    # Returns a new list removing the duplicates based on the function we provied
    list = ["foo", "bar", "abc", "hello", "world"]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List without words of the same length: ")
    IO.inspect(Enum.uniq_by(list, fn x -> String.length(x) end))
  end

  def capture_operator_function do
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

  def capture_operator_named_function do
    list = [1, 2, 3, 4, 5]
    IO.puts("List: ")
    IO.inspect(list)
    IO.puts("List multiplied by 10: ")
    # for a most succinct syntax, we can directly call the named function without explicitly capturing the variable
    IO.inspect(Enum.map(list, &EnumModule.multipliedBy10/1))
  end

end

EnumModule.all_function()
EnumModule.any_function()
EnumModule.chunk_every_function()
EnumModule.chunk_by_function()
EnumModule.map_every_function()
EnumModule.each_function()
EnumModule.map_function()
EnumModule.min1_function()
EnumModule.min2_function()
EnumModule.max1_function()
EnumModule.max2_function()
EnumModule.filter_function()
EnumModule.reduce_function()
EnumModule.sort1_function()
EnumModule.sort2_function()
EnumModule.uniq_function()
EnumModule.uniq_by_function()
EnumModule.capture_operator_function()
EnumModule.capture_operator_named_function()
