# Keyword-Cipher

Cristhian Estrada A01700043
Jose Luis Mata A01377205

# Description

A keyword cipher is a form of monoalphabetic substitution. A keyword is used as a key and determines the matches of letters from the cipher alphabet to the plain alphabet. Letter repetitions in the word are removed, then the cipher alphabet is generated with the keyword matching A, B, C, etc. until the keyword is exhausted, after which the rest of the letters in the text encryption are used in alphabetical order, excluding those already used in the key.

<a href="url"><img src="https://slideplayer.com/slide/16787073/97/images/4/Mixed+Alphabet+Keyword.jpg" align="center" height="400" width="700" ></a>


##  Proposed Solution
The objective of this project will be to implement a keyword encryption algorithm in the Elixir programming language. This program will allow us to read plain text from a file and create a file with encrypted text or  read an encrypted file and create a plain text file from a word that will be used as a key.

<a href="url"><img src="https://www.atpinc.com/upload/images/2020/04-22/4e79465eb02f4422a7c4bba9f99ffa09.jpg" align="center" height="400" width="700" ></a>



##  Tools

To meet this objective, we will use the Elixir programming language, which through its functional paradigm will allow us to represent encryption and decryption as a formula.  By means of recursive functions we will be able to iterate over the alphabets, both flat and created through the insertion of the keyword, and by using lists we will be able to store the results of encryption and decryption.  Finally, these results can be sent to a text file using the File I/O functions provided by the Elixir programming language.

<a href="url"><img src="https://images.slideplayer.com/23/6671828/slides/slide_24.jpg" align="center" height="400" width="700" ></a>


## References

    Wikimedia Foundation. (2022, June 24). _Substitution cipher_. Wikipedia. Retrieved July 15, 2022, from https://en.wikipedia.org/wiki/Substitution_cipher
    


