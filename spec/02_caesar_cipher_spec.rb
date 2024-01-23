# frozen_string_literal: true
require_relative '../lib/02_caesar_cipher'


describe "is_valid_key function" do
  it "returns true" do
    expect(is_valid_key(3)).to eq(true)
    expect(is_valid_key(26)).to eq(true)
  end

  it "returns false" do
    expect(is_valid_key(-1)).to eq(false)
    expect(is_valid_key(30)).to eq(false)
    expect(is_valid_key("20")).to eq(false)
    expect(is_valid_key(2.4)).to eq(false)
  end

end

describe "ciph_each_caracter(car, key) function" do
  it "returns a cripted letter (downcase)" do
    expect(ciph_each_caracter("a", 3)).to eq("d")
  end

  it "returns a cripted letter (upcase)" do
    expect(ciph_each_caracter("B", 3)).to eq("E")
  end

  it "returns a cripted letter (circle alphabet)" do
    expect(ciph_each_caracter("x", 3)).to eq("a")
  end

  it "returns a non alpha caracter" do
    expect(ciph_each_caracter("#", 3)).to eq("#")
  end

end

describe "ceasar cipher function" do
  it "returns an error" do
    expect(ceasar_cipher("What a string!", 30)).to eq("Clé acceptée : 0 à 26 inclus")
  end
  it "returns a coded string" do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end