# frozen_string_literal: true
require_relative '../lib/01_caesar_cipher'

describe "ceasar cipher function" do
  it "returns a string" do
    expect(ceasar_cipher("What a string!", 5)).to ("Bmfy f xywnsl!")
  end
end