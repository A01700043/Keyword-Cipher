## Keyword-Cipher
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
- [X] Data (folder with input examples)
- [X] Results (folder with output examples)
## Functions

1. **main**

Recieves 4 arguments, inputf string to input-file path, outputf string to output-file path, keyword a string with key-word to encrypt or decrypt, operation an atom to :encrypt or :decrypt.

This function calls read_contents(), to stream input file content, calls cryptic_process() to encrypt or decrypt input file data and store_txt to write the result in the output file.

2. **read_contents**

Recieves 1 argument, inputf string to input-file path. It will stream input file content row by rows and add them to a list of list.

3. **cryptic_process**

Recieves 3 arguments. data a list of list with file content, keyword a string withthe key word to encrypt or decrypt, operation an atom with the operation to perform:encrypt or :decrypt.

It will split every list of row content into words, call function letter parser() for every word in order to encrypt or decrypt and data cypher in order to prepare data forwrite an output.

4. **data_parser**

Recieves as argument a list with the encrypted information, it will allow us to add the symbols needed to represent rows in the txt file.


5. **cryptic_alphabet**

Recieves 1 argument. keyword a string with key-word to encrypt or decrypt.

It creates a list where every keyword letter is an element, then it is concatenated with a list of 26 alphabet letters and repeated elements are deleted.

6. **letter_parser**

Recieves 3 arguments. letter a list of list with letters, alphabet the result of the cryptic alphabet function, operation an atom to :encrypt or :decrypt.

It parses every letter in the list in order to prepare it for the encryption or decryption process, then it calls letter_encryption () for every item.

7. **letter_encryption**

 Recieves 3 arguments, letter a string with a single letter, alphabet a list with 26 letters, operation an atom to :encrypt or :decrypt.

It will match operation case and allow us to transform plain letters into letters from the encrypted alphabet according to its matching index, and other way around in case of decryption.

8. **store_txt**

Recieves 2 arguments, data a list of strings, outputf string to output-file path.

It will write data stream into the specified output path.

## How to execute it?
Clone the repository
```
git clone https://github.com/A01700043/Keyword-Cipher.git
```
Execute elixir interactive shell in the repository directory

    iex.bat
Compile cipher.ex file

    c"cipher.ex"
The basic execution line will include the following elements.

    Cipher.main("input","output","keyword",:operation)

Where every argument represents the following:

    "input": A string representing the path of an input .txt file
    "output": A string representing the path of an output .txt file
    "keyword":A string representing the encryption key.
    :operation: An atom representing either :encrypt or :decrypt process

    
## Screenshots
When cloning the repository from github, we will have the following folder.

![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLX9F0LhJLyj6jFzkja4dzasDqZQ-HCvpChHYyEOU_khChnPuQ_XJsRxZ7Tbi8H9AaM6xTNBbfYjiJyvmcJ5Vmx3z0UzENXxNQM9fAqqMgq6tI85xudZ1oy-ItArL8ARMPk3OenfWQ2BytD4dJDNAzA=w1129-h593-no?authuser=0)
    We open this folder with any editor that supports the elixir programming language, in this case we use visual studio code.
    ![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLWnlypREtmlz4DBAjMkO2TK6oD0pHJTU4-IRQSATfG-BH6ZIgKDIoXWNi_rrP28rUABmZ-2PMEvbtLO2IxU2u5650jzjL3uSvHjvF1Zh0pVPvmWm2r68qeJryum_frtnjG6hEnG-F17ke_tSgCyaPM=w987-h534-no?authuser=0)
    When opening the folder we will find 4 items, the README. md file, the cipher.ex file and two folders (data and results).![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLWqWoAfhjV9cwuQfJqY2nMKgi2zKz19KTbFSSQsfGBf5SOMWODCfCoO7C6Ye3_tn5Xs3GpentPgIb9QH0Ezs51FhRkQQQa_mJFKR3TpXJcr9oYWnjDX6ZFKbpWJCSdoqaaDTOce386WrJ9sa_Izic4=w980-h543-no?authuser=0)
   Inside the data folder we can find .txt files that we can use as input examples for the cipher.![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLXjmnyHHRihBOZCC7nJDNAwHU_TLz1R2PY6RbgX0lylmEk0hUkvWMPjpVop92J1_TL_YUkaQYNFKesZzuuoobHqt0mw8q9-ad1j9Y9tDAIkxj1tOOgHmApuVL12jtcGSq4u9yheX3uB2gYNx0UUsTY=w1022-h539-no?authuser=0)
    The cipher.ex file is the main file from which the program will run.
    ![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLU76JFCoyj3hdYuygJ2uwCqtptFgQNSWEBEfPitz10WOhbEn8kF-PsI3HfFfsgWxpt9AquMxZu_Ej9e0SPivD7_ASxmubWBuSEQi38wMErx6kOq95281HkuhXlcKnuhj_YX-q75DLbzHLhO5ugpE2Y=w939-h542-no?authuser=0)
    To execute it, we enter directly into the elixir shell executing the command iex.bat![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLUZipVNgW0ckJugcJ5LqumEs1wYd5M7F6ZqT2V_ecv20ZwQS1lvfV0nv3O-pQIf4bm6ubPM5Ur8pKM2Z-V7paIkb6LVpKlWG4BvvVfKaIv5Edf_a5K1Sju7WEJ_dNqCj2dSaw43cln1VR05fEbw9Ec=w1040-h518-no?authuser=0)
    Once inside the elixir shell we compile the program using the c"cipher.ex" instruction![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLWYOVb3Cu9ZxeIP7aRNR0uOoKNSk5xy1c6ot7A8abRZvEcQikxJraQ2EW8d7hSWzaVs_3rxjrjuN7Mx7CI-vmo8eQIJA9w85SEiq10Uj7Rmstrdn59eQLcbGWCXgCd2QQ-etZnB3CFGQZocQpAZPaE=w1040-h515-no?authuser=0)
   Once compiled we can call the main function using the following format. Cipher.main("input","output","keyword",:operation)![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLXDOWU1diEeBFVXQLLk2i_6RCq5Er9_KQNo0Bispd7Lxf5GzifUbF2dyoGIAz2XQarnADdANgc5FoT-tQJz3CrEVONCSIqd-XbCzkBJVmAVSla5EpwRZlGrNehejOvyf-D0iOnAsmIG4s9a2Bi9wNc=w1040-h545-no?authuser=0)
 Once the program is executed, a .txt file will be created with the result. Inside the results folder we can find examples of output files![enter image description here](https://lh3.googleusercontent.com/pw/AM-JKLV_wlyUGq2pkwFL8Zfy3YE90Yilnk3e1IDKAcbSr8hKbTqn2_ytE6C3CzPFXvXXfhC35n2W43W3fCjh4NvXRbUGauEgFuOeZNDsC_5IqS-KS0y5nPpnK9EuCL1YmD02-ngee4x5y8XGc3eD9lBTG-E=w1041-h528-no?authuser=0)  
## References
Wikimedia Foundation. (2022, June 24). _Substitution cipher_. Wikipedia. Retrieved July 15, 2022, from https://en.wikipedia.org/wiki/Substitution_cipher

Wikimedia Foundation. (2022, June 16). _Cipher_. Wikipedia. Retrieved July 18, 2022, from https://en.wikipedia.org/wiki/Cipher

_Blog_. What is a keyword Cypher? (n.d.). Retrieved July 18, 2022, from https://high-tech-guide.com/article/what-is-a-keyword-cypher
