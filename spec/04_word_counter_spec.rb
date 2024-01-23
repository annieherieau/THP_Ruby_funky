# frozen_string_literal: true

require_relative '../lib/04_word_counter'

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

describe "word_counter(corpus, dictionnary) function" do
  it "returns occurrences of a word" do
    expect(("below", dictionnary)).to eq({"below"=>1, "low"=>1})
  end

  it "returns occurrences of words in a sentence" do
    expect(("Howdy partner, sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end


