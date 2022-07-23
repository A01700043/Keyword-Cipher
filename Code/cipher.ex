defmodule  Cipher do
  # c"cipher.ex"
  # Cipher.main("input1.txt","Dragon")
  def main(input,keyword)
  do
    input
    |>Cipher.read_contents()
    |>Cipher.encryption_process(keyword)
  end

  def read_contents(list)
  do
  File.stream!(list)
  |>Enum.map(fn x -> String.trim(x)end)
  |>Enum.map(fn x -> String.split(x, ",")end)
  end

  def encryption_process(content,keyword)
  do

  alfabeto=Cipher.alphabet_encryption(keyword)
  newcontent=Enum.map(content,fn [x] -> String.split(x ,"", trim: true)end)
  dos=Enum.map(newcontent,fn x -> Cipher.letter_encryption(x,alfabeto)end)
  trp=Enum.map(dos,fn x -> List.to_string(x)end)
  cosas=Cipher.data_parser(trp)
  Cipher.store_txt(cosas)
  end

  def data_parser(data)
  do
    data
    |>Enum.map_join( "\n",&(&1))
  end

  def alphabet_encryption(keyword)
do
 kw = keyword |>String.upcase() |>String.split("", trim: true) |>Enum.uniq()
 Enum.uniq( kw ++ Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>> end))

end

def letter_encryption(letter,alphabet)
do

  Enum.map(letter,fn x -> Cipher.change_letter(x, alphabet)end)
end

def letter_comparator(letter,alphabet)
do
  Enum.map(letter,fn x -> String.upcase(x,alphabet)end)
end

def store_txt(data) do
  [data]
  |> Enum.into(File.stream!("output.txt"))
end

def change_letter(x, alphabet) do
  case x do
  "T"-> "Element Alphabet"
  "t"-> "Element Alphabet 2"
  _ -> "D"
end

end
end
