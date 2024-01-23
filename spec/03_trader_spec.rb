# frozen_string_literal: true

require_relative '../lib/03_trader'

describe "day_trader(prices) function" do
  it "returns best buying day and best selling day" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4]) # 15 - 3 = 12
  end
end
