defmodule  Cipher do
  # Cipher.main("input1.txt","Dragon")
  def main(input,keyword)
  do
    input
    |>Cipher.read_contents()
    |>Cipher.process_encryption(keyword)
  end
  def read_contents(list)
do
  File.stream!(list)
  |>Enum.map(fn x -> String.trim(x)end)
  |>Enum.map(fn x -> String.split(x, ",")end)
end

def process_encryption(content,keyword)
do
  upkeyword=String.upcase(keyword)
  keyletters=String.split(upkeyword ,"", trim: true)
  alphabet=Enum.map(Enum.to_list(?A..?Z), fn(n) -> <<n>> end)
  concatenate = keyletters ++ alphabet
  keyalphabet= Enum.uniq(concatenate)
  #.................................................
  linea1=Enum.at(content, 1)
  linea1string=List.to_string(linea1)
  listofwords=String.split(linea1string ," ", trim: true)
  #...........................................................
  linea1=Enum.at(listofwords, 0)
  listletters=String.split(linea1 ,"", trim: true)
  #.............................................................
  Cipher.letter_encryption(listletters, keyalphabet)
end
def alphabet_encryption(letter,keyalphabet)
do
   #letter
   #keyalphabet
end

def letter_encryption(letter,keyalphabet)
do
   #letter
   #keyalphabet
end

end
