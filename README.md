﻿## Keyword-Cipher
![enter image description here](https://www.globalsign.com/application/files/5315/1057/6092/symmetric_cryptography.png)

## Team
* *Cristhian Estrada Quiroz  A01700043*
* *Jose Luis Mata A01377205*

## Problem description 
In cryptography, encryption is the process of encoding information. This process converts the original representation of information, known as plaintext, into an alternate form known as ciphertext. At best, only authorized parties can decrypt a ciphertext to plaintext and access the original information. Encryption itself does not prevent interference, but it denies the content intelligible to a potential interceptor.

A substitution cipher is a method of encryption by plaintext units being replaced with ciphertext following a regular system; the "units" can be a single letter (the most common case), pairs of letters, triplets of letters, mixtures of the above, among others. The receiver decrypts the text by performing the reverse substitution.

A word substitution encryption method is based on a keyword. All spaces and repeated letters are removed from a word or phrase, which will then be used by the encoder to start the encrypted alphabet. The end of the encrypted alphabet will be the rest of the alphabet in the correct order but without repeating the letters already used in the keyword. For example, if the keyword is DRAGON, the encrypted alphabet would be as follows.

![enter image description here](https://slaystudy.com/wp-content/uploads/2021/04/keyword_cipher_3.svg)



## Language
- Elixir
 
## Topics used
1. Functional programming
        
        We are going to use Elixir that works with a functional programming paradigm, in order to represent the whole algorithm as a standard function.
        
2. Recursion
        
        In functional programming we use recursion to iterate over the items given a list, then we will use recursión in order to get elements of the data structures in our program.
  
3. Lists
        
        Lists are the key point of the algorithm operation and they are the structures that will allow us to save all the information to which we will have to apply procedures.
4. File I/O
        
        The I/O functions of the elixir programming language will allow us to read information from files and write information to files, which is the result of encryption and decryption. 

## Proposed solution
The objective of this project will be to implement a keyword encryption algorithm in the Elixir programming language. This program will allow us to read plain text from a file and create a file with encrypted text or read an encrypted file and create a plain text file from a word that will be used as a key.

To complete this objective, the first thing will be to use the Elixir shell to obtain the encryption or decryption word; as well as the operation to do.

Then using Elixir I/O functions we will collect data from a .txt file that will contain the data to be encrypted or decrypted. Once the data is stored in one or more lists, we will perform a recursive function that allow us to encode collected data.

After the encryption or decryption process is completed, then we will make use of Elixir I/O functions again in order to post resultant data into a new .txt file.

Forseeing the functions we are going to make in order to complete the project, we are thinking of the next ones:

* I/O functions to retrieve data from a .txt file
* Storage function to convert .txt data into list / lists.
* Recursive functions for encryption and decryption.
* I/O functions to post data in a .txt file

![enter image description here](https://www.ssl2buy.com/wiki/wp-content/uploads/2015/12/Symmetric-Encryption.png)
## What does it will include?
### Files
- [X] README
- [X] cipher.ex (main file)
- [X] input.txt
## Functions

1. **main**

Function that takes four arguments. A string containing the path to the input file, a sting containing the path to the output file, a string representing the keyword to encrypt, and an atom representing the operation to perform.

This function call three functions that will allow us to read the file, encrypt the content and write to the output file.

2. **read_contents**

Takes a string with the full path to a txt file. It will open the file and return its contents in a list, where each element is a row in the file.

3. **cryptic_process**

Takes three arguments.  A list of list with the content of input file, a string with the keyword to use during encryption or decryption and a atom that represents operation to do.  It will allow us to simplify data recovered from input file, call needed functions to encrypt or decrypt, and parse the information with symbols needed to represent rows in the txt file.

4. **data_parser**

Recieves as argument a list with the encrypted information, it will allow us to add the symbols needed to represent rows in the txt file.


5. **alphabet_encryption**

Recieves as argument a keyword string, it will create a 26 letters encrypted alphabet list, that will allow us to represent indexes in encryption or decryption.

6. **letter_parser**

Function that receives three arguments, a list with letters of input file data content, an encrypted alphabet, and an operation to realize.

It will simplify list of letters into items, and call functions needed to encode or decode every letter.

7. **letter_encryption**

  Function that recieves a letter, an encrypted alphabet, and an operation to realize.  It will match operation case and allow us to transform plain letters into letters from the encrypted alphabet according to its matching index, and other way around in case of decryption.

8. **store_csv**

Takes a list of lists with the data, and a string with the full path to a file. It will write the contents of the matrix into a file, in txt format.

    
## References
Wikimedia Foundation. (2022, June 24). _Substitution cipher_. Wikipedia. Retrieved July 15, 2022, from https://en.wikipedia.org/wiki/Substitution_cipher

Wikimedia Foundation. (2022, June 16). _Cipher_. Wikipedia. Retrieved July 18, 2022, from https://en.wikipedia.org/wiki/Cipher

_Blog_. What is a keyword Cypher? (n.d.). Retrieved July 18, 2022, from https://high-tech-guide.com/article/what-is-a-keyword-cypher

