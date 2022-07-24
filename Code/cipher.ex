  # Final_Project_Keyword_Cipher
  # Cristhian Estrada Quiroz  A01700043
  # Jose Luis Mata A01377205
  # 28/ 07 / 2022

defmodule  Cipher do
  # Cipher.main("input1.txt","output1.txt","Dragon", :encrypt)
  # Cipher.main("output1.txt","output2.txt","Dragon", :decrypt)

  @doc """
     Recieves as arguments, input file path, output file path, keyword to cipher and operation atom.
     This function call three functions that will allow us to read the file,
     encrypt the content and write to the output file.
  """
 def main(inputf,outputf,keyword,operation)
 do
          inputf
          |>Cipher.read_contents()
          |>Cipher.cryptic_process(keyword,operation)
          |>Cipher.store_txt(outputf)
 end
  @doc """
   Takes a string with the full path to a txt file.
   It will open the file and return its contents in a list,
   where each element is a row in the file.
  """
  def read_contents(inputf)
    do
     File.stream!(inputf)
     |>Enum.map(fn x -> String.trim(x)end)
     |>Enum.map(fn x -> String.split(x, ",")end)
  end
    @doc """
   Takes three arguments. A list of list with the content of input file,
   a string with the keyword to use during encryption or decryption and
   a atom that represents operation to do.

   It will allow us to simplify data recovered from input file,
   call needed functions to encrypt or decrypt,
   and parse the information with symbols needed to represent rows in the txt file.
  """
  def cryptic_process(data,keyword,operation)
  do
    Enum.map(data,fn [x] -> String.split(x ,"", trim: true)end)
     |>Enum.map(fn x -> Cipher.letter_parser(x,Cipher.cryptic_alphabet(keyword),operation)end)
     |>Enum.map(fn x -> List.to_string(x)end)
     |>Cipher.data_parser()
  end
    @doc """
   Recieves a list with the encrypted information,
   it will allow us to add the symbols needed to represent rows in the txt file.
  """
  def data_parser(data)
  do
    data
    |>Enum.map_join( "\n",&(&1))
  end
    @doc """
   Recieves as argument a keyword string,
   it will create a 26 letters encrypted alphabet list,
   that will allow us to represent indexes in encryption or decryption.
  """
def cryptic_alphabet(keyword)
   do
   Enum.uniq(
     (
     keyword
     |>String.upcase()
     |>String.split("", trim: true))
     ++ Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>>
    end))
end
     @doc """

    Function that receives three arguments,
   a list with letters of input file data content, an encrypted alphabet,
   and an operation to realize.

   It will simplify list of letters into items,
   and call functions needed to encode or decode every letter.
  """
def letter_parser(letter,alphabet,operation)
do
  Enum.map(letter,fn x ->
    if String.match?(x, ~r/^\p{L}$/u)
    do
      if (x === String.upcase(x))
      do
        Cipher.letter_encryption(x, alphabet, operation)
      else
        String.downcase(Cipher.letter_encryption(String.upcase(x), alphabet, operation))
       end
    else
      x
    end
  end)
end
     @doc """
   Function that recieves a letter, an encrypted alphabet,
   and an operation to realize.

   It will match operation case and allow us to transform plain letters
   into letters from the encrypted alphabet according to its matching index,
   and other way around in case of decryption.
  """
def letter_encryption(letter, alphabet,operation) do
  case operation
      do
        :encrypt->
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
       :decrypt->
        cond  do
          Enum.at(alphabet, 0) === letter -> "A"
          Enum.at(alphabet, 1) === letter -> "B"
          Enum.at(alphabet, 2) === letter -> "C"
          Enum.at(alphabet, 3) === letter -> "D"
          Enum.at(alphabet, 4) === letter -> "E"
          Enum.at(alphabet, 5) === letter -> "F"
          Enum.at(alphabet, 6) === letter -> "G"
          Enum.at(alphabet, 7) === letter -> "H"
          Enum.at(alphabet, 8) === letter -> "I"
          Enum.at(alphabet, 9) === letter -> "J"
          Enum.at(alphabet, 10) === letter -> "K"
          Enum.at(alphabet, 11) === letter -> "L"
          Enum.at(alphabet, 12) === letter -> "M"
          Enum.at(alphabet, 13) === letter -> "N"
          Enum.at(alphabet, 14) === letter -> "O"
          Enum.at(alphabet, 15) === letter -> "P"
          Enum.at(alphabet, 16) === letter -> "Q"
          Enum.at(alphabet, 17) === letter -> "R"
          Enum.at(alphabet, 18) === letter -> "S"
          Enum.at(alphabet, 19) === letter -> "T"
          Enum.at(alphabet, 20) === letter -> "U"
          Enum.at(alphabet, 21) === letter -> "V"
          Enum.at(alphabet, 22) === letter -> "W"
          Enum.at(alphabet, 23) === letter -> "X"
          Enum.at(alphabet, 24) === letter -> "Y"
          Enum.at(alphabet, 25) === letter -> "Z"
           true -> letter
          end
        _ -> "Unrecognized Operation"
    end

end
     @doc """
   Takes a list of lists with the data, and a string with the full path to a file.
   It will write the contents of the matrix into a file, in txt format.
  """
def store_txt(data,outputf) do
  [data]
  |> Enum.into(File.stream!(outputf))
end

end
