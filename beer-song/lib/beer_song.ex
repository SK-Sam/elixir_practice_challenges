defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) when number > 2 do
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
  end

  def verse(number) when number == 2 do
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def verse(number) when number == 1 do
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse(number) when number == 0 do
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  def lyrics do
    lyrics(99..0)
  end

  @spec lyrics(Range.t()) :: String.t()
  def lyrics(bottles..lowest) do
    if bottles >= lowest do
      #"#{verse(bottles)}#{lyrics((bottles - 1)..lowest)}"
      "\n#{verse(bottles)}" <> "#{lyrics((bottles - 1)..lowest)}"
    end
  end

end
