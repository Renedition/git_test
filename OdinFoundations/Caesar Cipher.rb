def caesar_cipher(str, shift)
    shift = shift % 26
    result = ""
    # make a new string
    for index in 0...str.length
      char = str[index]
      shiftchar = char.ord + shift
        if shiftchar > "z".ord
            shiftchar -= 26
        end
        shiftchar = shiftchar.chr
      result += shiftchar
    end
    
    return result
end
  
puts caesar_cipher("sadz",1)