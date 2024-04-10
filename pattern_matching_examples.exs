defmodule PatternMatching do
  def match_operator_function do
    # The match operator (=) is used to match a value to a pattern
    IO.puts("List: ")
    list = [1, 2, 3, 4, 5]
    [head | tail] = list
    IO.puts("Head: ")
    IO.inspect(head)
    IO.puts("Tail: ")
    IO.inspect(tail)

    IO.puts("Tuple: ")
    tuple = {3.14, :ok, "Hello world!"}
    {first, second, third} = tuple
    IO.puts("First: ")
    IO.inspect(first)
    IO.puts("Second: ")
    IO.inspect(second)
    IO.puts("Third: ")
    IO.inspect(third)
  end

  def pin_operator_function do
    # The pin operator (^) is used to match a value to a pattern and not rebind it
    greeting = "hello"

    greet = fn
      ^greeting, name -> "Hi, #{name}"
      greeting, name -> "#{greeting}, #{name}"
    end

    IO.puts(greet.(greeting, "Arcoverde"))
    IO.puts(greet.("Hello", "Thiago"))
    IO.inspect(greeting)

    #note that greeting still is "hello"
  end
end

# PatternMatching.match_operator_function()
PatternMatching.pin_operator_function()
