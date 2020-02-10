sample_dir = "/Users/theoleanse/samples/"

sample_dir
|> File.ls()
|> case do
  {:ok, subdirs} ->
    subdirs

  _ ->
    []
end
|> Enum.map(&(sample_dir <> &1))
|> Enum.map(&File.ls/1)
|> IO.inspect()
