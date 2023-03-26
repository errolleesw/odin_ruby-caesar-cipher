ALPHABET_SIZE = 26

def caesar_cipher(string,shift=0)
  # array = string.split(" ")

  char_array = string.chars.map do |char|
    if char.match(/[A-Za-z]/)
      ascii_code = char.ord
      # 90 is the ascii code for "Z". The if check is checking if a char is a lower case, if it is shift by 65, which is the the code for "A" else shift by 97 which is the code for "a".
      shifted_code = (ascii_code + shift - (ascii_code < 91 ? 65 : 97)) % ALPHABET_SIZE
      (shifted_code + (ascii_code < 91 ? 65 : 97)).chr    
    else
      char
    end
  end
  char_array.join("")

  # int_array = array.map { |char| char.ord }
  # shifted_int_array = int_array.map { |int| int + shift}
  # shifted_array = shifted_int_array.map { |int| int.chr}
  # result = shifted_array.join("")
end

# p caesar_cipher("What a string!", 5)
