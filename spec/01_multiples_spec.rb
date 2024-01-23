# frozen_string_literal: true

require_relative '../lib/01_multiples'

describe "is_valid(number) function" do
  it "returns true (Interger > 0 )" do
    expect(is_valid(33)).to eq(true)
  end
  it "returns false (not Interger > 0 )" do
    expect(is_valid(-1)).to eq(false) # negative
    expect(is_valid(8.5)).to eq(false) #float
    expect(is_valid("20")).to eq(false) #string
  end
end

describe "sum_of_3_or_5_multiples(number) function" do
  it "returns sum of suite to a given number (exclude)" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "returns an error message" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Erreur : uniquement les entiers naturels")
    expect(sum_of_3_or_5_multiples(8.5)).to eq("Erreur : uniquement les entiers naturels")
    expect(sum_of_3_or_5_multiples("20")).to eq("Erreur : uniquement les entiers naturels")
  end
end

describe "is_multiple_of_3_or_5(number) function" do
  it "returns true" do
    expect(is_multiple_of_3_or_5(9)).to eq(true) # multiple de 3
    expect(is_multiple_of_3_or_5(10)).to eq(true) #multiple de 5
  end

  it 'returns false' do
    expect(is_multiple_of_3_or_5(7)).to eq(false)
    expect(is_multiple_of_3_or_5(22)).to eq(false)
  end
end