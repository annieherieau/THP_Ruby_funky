# frozen_string_literal: true
# ______ Solution 1
# somme des multiples de 3 et 5 jusqu'au final_num exclu >> retrun Interger
# def sum_of_3_or_5_multiples(final_number)
#   # accepte uniqment les entiers naturels
#   return 'Erreur : uniquement les entiers naturels' unless final_number.class == Integer && final_number >=0
#   # Array des nombres jusqu'à final_number EXCLU
#   numbers_suite_to_final = Array.new(final_number-1){ |index| index+1 }

#   # garder les nombres qui sont des multiples de 3 ou 5
#   multiples_of_3_or_5 = numbers_suite_to_final.filter{ |num| (number%3).zero? ||(number%5).zero? }

#   # renvoyer la somme des multiples
#   return multiples_of_3_or_5.sum
# end

#_________ Solution 2
# accepte uniqment les entiers naturels
def is_valid(number)
  number.class == Integer && number >=0
end

# verifie si multiple de 3 ou 5

def is_multiple_of_3_or_5(number)
  (number%3).zero? ||(number%5).zero?
end

def sum_of_3_or_5_multiples(number)
  # accepte uniqment les entiers naturels
  return 'Erreur : uniquement les entiers naturels' unless is_valid(number)
  # calcul de la somme
  sum =0
  (1...number).each do |num| # le nombre est exclu de la boucle
    # verifie si multiple de 3 ou 5
    sum += num if is_multiple_of_3_or_5(num)
  end
  return sum
end
