defmodule ControlStructures do
  def if_and_unless(arg) do
    if String.valid?(arg) do
      IO.puts("The string is valid")
    else
      IO.puts("The string is invalid")
    end

    unless is_integer(arg) do
      IO.puts("The arg is not an integer")
    else
      IO.puts("The arg is an integer")
    end

    IO.inspect(arg)
  end

  def case_structure(arg) do
    case arg do
      0 -> IO.puts("The arg is zero")
      1 -> IO.puts("The arg is one")
      _ -> IO.puts("The arg is neither zero nor one")
    end
  end

  def case_guard_clause_structure(arg) do
    case arg do
      x when is_integer(x) -> IO.puts("The arg is an integer")
      x when is_float(x) -> IO.puts("The arg is a float")
      x when is_binary(x) -> IO.puts("The arg is a binary")
      _ -> IO.puts("The arg is neither an integer, a float nor a binary")
    end
  end

  def cond_structure(arg) do
    weather = arg
    cond do
      weather == :sunny -> IO.puts("It's sunny")
      weather == :rainy -> IO.puts("It's rainy")
      weather == :cloudy -> IO.puts("It's cloudy")
      weather == :snowy -> IO.puts("It's snowy")
      true -> IO.puts("I don't know what the weather is")
    end
  end

  def with_structure do
    user = %{name: "Thiago", surname: "Arcoverde"}
    with {:ok, name} <- Map.fetch(user, :name),
         {:ok, surname} <- Map.fetch(user, :surname) do
      IO.puts("Name: #{name}")
      IO.puts("Surname: #{surname}")
    end
  end

end

# ControlStructures.if_and_unless("Hello world!")
# ControlStructures.if_and_unless(<<0xFFFFFFFF::32>>) # 32-bit integer
# ControlStructures.case_structure(0)
# ControlStructures.case_structure(1)
# ControlStructures.case_structure(2)
# ControlStructures.case_guard_clause_structure(0)
# ControlStructures.case_guard_clause_structure(3.14)
# ControlStructures.case_guard_clause_structure(<<0xFFFF::16>>)
# ControlStructures.case_guard_clause_structure(["Hello", "World"])
# ControlStructures.cond_structure(:sunny)
# ControlStructures.cond_structure(:rainy)
# ControlStructures.cond_structure(:cloudy)
# ControlStructures.cond_structure(:snowy)
# ControlStructures.cond_structure(:foggy)
# ControlStructures.with_structure()
