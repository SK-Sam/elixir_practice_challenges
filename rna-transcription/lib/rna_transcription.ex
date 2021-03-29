defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    to_string(dna)
    |> String.split
    |> convert_each_rna
    |> List.to_string
    |> to_charlist
  end

  defp convert_each_rna(rnas) do
    translation_dictionary = %{
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }
    Enum.map(rnas, fn rna -> translation_dictionary[rna] end)
  end
end
