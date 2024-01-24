# frozen_string_literal: true

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# read .txt file and slit into an array of words >> returns Array
def file_to_words(file_path)
  file = File.open(file_path, "r")
  data = file.readlines.map(&:chomp)
  words = Array.new
  data.each {|string| words.push(string.gsub(/[[:punct:]]/, ' ').split)}
  return words.flatten
end

# counter words occurences of dictionnary in corpus >> returns Hash
# c'est avace un match donc c'est pas les mots en entiers...
def word_counter(corpus, dictionnary)
  # Array of sorted words
  if corpus.class == String
    words = corpus.gsub(/[[:punct:]]/, ' ').split.sort.uniq
  else
    words = corpus
  end

  result = Hash.new
  
  dictionnary.each do |dico|
    words.each do |word|
      if word.downcase.match?(dico)
        result.key?(dico) ? result[dico] += 1 : result[dico] = 1
      end
    end
  end
  return result
end

def print_hash(hash)
  hash.each_pair{|k,v| puts "#{k} : #{v} occurence(s)"}
end

# print the hash >> puts String
print_hash(word_counter(file_to_words('lib/shorter_shakespeare.txt'), file_to_words('lib/swear_words.txt')))