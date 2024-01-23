# frozen_string_literal: true

# verifier la clé : ingerger [0..26] >> returns boolean 
def is_valid_key(key)
  key.class == Integer && key.between?(0 , 26)
end

# code_each_caracter letter with key
def ciph_each_caracter(car, key)
  if /[[:alpha:]]/.match?(car)
    car_ascii = car.ord + key
    # A-Z : 65 à 90 / a-z : 97-122
    car_ascii.between?("Z".ord+1, "a".ord+1) || car_ascii > "z".ord ? back_to_a = -26 : back_to_a = 0
    ciphed_car = car_ascii + back_to_a
    ciphed_car = ciphed_car.chr
  else
    ciphed_car = car
  end
  return ciphed_car
end
# chiffrer une string avec une clé 0 à 26
def ceasar_cipher(str, key)
  # verifier si la clé est valide
  return "Clé acceptée : 0 à 26 inclus" unless is_valid_key(key)

  # array of words
  words = str.split

  # Array of letters + chiph
  ciphed_words = words.map do |word|
    chars = word.chars.map do |car|
      ciph_each_caracter(car, key)
    end
    chars.join
  end 

  # renvoyer la string
  return ciphed_words.join(" ")
end

