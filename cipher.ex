# Final Project: Keyword_Cipher
# Cristhian Estrada A01700043
# Jose Luis Mata A01377205
# 28/07/2022

# Cipher.main("Data/input1.txt","Results/output1.txt","dragon", :encrypt)
# Cipher.main("Data/input2.txt","Results/output2.txt","dragon", :decrypt)

defmodule  Cipher do

  @doc """
    Recieves 4 arguments, inputf string to input-file path, outputf string to output-file path
    keyword a string with key-word to encrypt or decrypt, operation an atom to :encrypt or :decrypt.

    This function calls read_contents(), to stream input file content, calls cryptic_process() to encrypt
    or decrypt input file data and store_txt to write the result in the output file.
  """

 def main(inputf,outputf,keyword,operation)
  do
    inputf
    |>Cipher.read_contents()
    |>Cipher.cryptic_process(keyword,operation)
    |>Cipher.store_txt(outputf)
  end

  @doc """
    Recieves 1 argument, inputf string to input-file path.
    It will stream input file content row by rows and add them to a list of list.
  """

 def read_contents(inputf)
  do
    File.stream!(inputf)
    |>Enum.map(fn x -> String.trim(x)end)
    |>Enum.map(fn x -> String.split(x, ",")end)
  end

  @doc """
    Recieves 3 arguments. data a list of list with file content, keyword a string with
    the key word to encrypt or decrypt, operation an atom with the operation to perform
    :encrypt or :decrypt.

    It will split every list of row content into words, call function letter parser() for
    every word in order to encrypt or decrypt  and data cypher in order to prepare data for
    write an output.
  """

 def cryptic_process(data,keyword,operation)
  do
    Enum.map(data,fn [x] -> String.split(x ,"", trim: true)end)
    |>Enum.map(fn x -> Cipher.letter_parser(x,Cipher.cryptic_alphabet(keyword),operation)end)
    |>Enum.map(fn x -> List.to_string(x)end)
    |>Cipher.data_parser()
  end

  @doc """
    Recieves 1 argument. data a list of list that represents encrypted or decrypted
    rows from the original input file.

    It joins every element in the list with the new line symbol.
  """

 def data_parser(data)
  do
    data
    |>Enum.map_join( "\n",&(&1))
  end

  @doc """
    Recieves 1 argument. keyword a string with key-word to encrypt or decrypt

    It creates a list where every keyword letter is an element, then it is concatenated
    with a list of 26 alphabet letters and repeated elements are deleted.
  """

 def cryptic_alphabet(keyword)
  do
    Enum.uniq((keyword
      |>String.upcase()
      |>String.split("", trim: true))
      ++ Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>>
    end))
  end

  @doc """
    Recieves 3 arguments. letter a list of list with letters, alphabet the
    result of the cryptic alphabet function, operation an atom to :encrypt or :decrypt.

    It parses every letter in the list in order to prepare it for the encryption or decryption
    process, then it calls letter_encryption () for every item.
  """

 def letter_parser(letter,alphabet,operation)
  do
    Enum.map(letter,fn x -> if String.match?(x, ~r/^\p{L}$/u)
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
    Recieves 3 arguments, letter a string with a single letter, alphabet a list
    with 26 letters, operation an atom to :encrypt or :decrypt.

    It will match operation case and allow us to transform plain letters
    into letters from the encrypted alphabet according to its matching index,
    and other way around in case of decryption.
  """

 def letter_encryption(letter, alphabet,operation)
  do
    case operation
    do
      :encrypt->
        Enum.at(alphabet, Enum.find_index(Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>>end), fn x -> x === letter end))

      :decrypt->
        Enum.at(Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>>end), Enum.find_index(alphabet, fn x -> x === letter end))

      _ -> "Unrecognized Operation"
    end

  end

  @doc """
    Recieves 2 arguments, data a list of strings, outputf string to output-file path.

    It will write data stream into the specified output path.
  """
 def store_txt(data,outputf)
  do
    [data]
    |> Enum.into(File.stream!(outputf))
  end

end
