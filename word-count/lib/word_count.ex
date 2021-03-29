defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    # Break sentence down into List of words split by spaces
    # Create a map which has a Key of the word and Value of frequency
    # We can do this by creating an empty Map which will be updated upon iterating through List

    # Iterate through List
      # Remove any letters outside of the alphabet
      # For each word, if it does NOT exist in the Map
        # Update the Map with the word as a Key
      # If it DOES exist in the Map
        # Update the Key by adding +1 to the Value
    sentence
    |> String.split(" ")
    |> counter
  end

  defp counter(words) do
    Enum.reduce(words, %{}, fn word, acc -> update_word_map(acc, word) end)
  end

  defp update_word_map(word_map, word) do
    if Map.has_key?(word_map, word) do
      Map.put(word_map, word, word_map[word] + 1)
    else
      Map.put(word_map, word, 1)
    end
  end


  # defp check_if_valid_chars(word) do
  #   letter
  # end

  # defp letter?(word) do
  #   Regex.match?(~r/^\p{L}$/fu, word)
  # end
end
