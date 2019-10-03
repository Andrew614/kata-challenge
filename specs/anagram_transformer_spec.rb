require_relative 'spec_helper'
require_relative '../katas/anagram_transformer'

describe 'flip' do
  it 'should flip the character in input string specified by left position' do
    expect(flip('hello',0)).to eq 'ehllo'
    expect(flip('hello',1)).to eq 'hlelo'
    expect(flip('hello',3)).to eq 'helol'
  end
end

describe 'flips_to_transform' do
  it 'should transform first string into the second string, returning the transformed string' do
    expect(flips_to_transform('deductions','discounted')).to eq 26
    expect(flips_to_transform('married','admirer')).to eq 9
    expect(flips_to_transform('the morse code', 'here come dots')).to eq 32
    expect(flips_to_transform('eleven plus two', 'twelve plus one')).to eq 40
  end
end
