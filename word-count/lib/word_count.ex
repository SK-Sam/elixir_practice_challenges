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

  end
end
