defmodule  Cipher do

  # Cipher.main("input1.txt","output1.txt","Dragon", :encrypt)
 def main(inputf,outputf,keyword,operation)
 do
    case operation
      do
        :encrypt->
          inputf
          |>Cipher.read_contents()
          |>Cipher.encryption_process(keyword)
          |>Cipher.store_txt(outputf)
       :decrypt-> "Element Alphabet 2"
        _ -> "Unrecognized Operation"
    end
 end
  #Complete!
  def read_contents(inputf)
    do
     File.stream!(inputf)
     |>Enum.map(fn x -> String.trim(x)end)
     |>Enum.map(fn x -> String.split(x, ",")end)
  end
  # Complete!
  def encryption_process(data,keyword)
  do
    Enum.map(data,fn [x] -> String.split(x ,"", trim: true)end)
     |>Enum.map(fn x -> Cipher.letter_parser(x,Cipher.alphabet_encryption(keyword))end)
     |>Enum.map(fn x -> List.to_string(x)end)
     |>Cipher.data_parser()
  end
  # Complete!
  def data_parser(data)
  do
    data
    |>Enum.map_join( "\n",&(&1))
  end
  # Complete!
def alphabet_encryption(keyword)
   do
   Enum.uniq(
     (
     keyword
     |>String.upcase()
     |>String.split("", trim: true))
     ++ Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>>
    end))
end
   # Complete!
def letter_parser(letter,alphabet)
do
  Enum.map(letter,fn x -> x
    if String.match?(x, ~r/^\p{L}$/u)
    do
      if (x === String.upcase(x))
      do
        Cipher.letter_encryption(x, alphabet)
      else
        String.downcase(Cipher.letter_encryption(String.upcase(x), alphabet))
       end
    else
      x
    end
  end)
end
   #Complete!
def letter_encryption(letter, alphabet) do
  case letter do
    "A" -> Enum.at(alphabet, 0)
    "B" -> Enum.at(alphabet, 1)
    "C" -> Enum.at(alphabet, 2)
    "D" -> Enum.at(alphabet, 3)
    "E" -> Enum.at(alphabet, 4)
    "F" -> Enum.at(alphabet, 5)
    "G" -> Enum.at(alphabet, 6)
    "H" -> Enum.at(alphabet, 7)
    "I" -> Enum.at(alphabet, 8)
    "J" -> Enum.at(alphabet, 9)
    "K" -> Enum.at(alphabet, 10)
    "L" -> Enum.at(alphabet, 11)
    "M" -> Enum.at(alphabet, 12)
    "N" -> Enum.at(alphabet, 13)
    "O" -> Enum.at(alphabet, 14)
    "P" -> Enum.at(alphabet, 15)
    "Q" -> Enum.at(alphabet, 16)
    "R" -> Enum.at(alphabet, 17)
    "S" -> Enum.at(alphabet, 18)
    "T" -> Enum.at(alphabet, 19)
    "U" -> Enum.at(alphabet, 20)
    "V" -> Enum.at(alphabet, 21)
    "W" -> Enum.at(alphabet, 22)
    "X" -> Enum.at(alphabet, 23)
    "Y" -> Enum.at(alphabet, 24)
    "Z" -> Enum.at(alphabet, 25)
     _ -> letter
  end
end

def store_txt(data,outputf) do
  [data]
  |> Enum.into(File.stream!(outputf))
end

end
