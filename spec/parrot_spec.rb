require_relative './spec_helper'
require_relative '../parrot.rb' # Code your solution in this file

describe '#parrot' do
  it 'should say "Squawk!" by default' do
    expect($stdout).to receive(:puts).with("Squawk!")

    parrot
  end

  it 'should return the default phrase' do
    phrase = parrot

    expect(phrase).to eq("Squawk!")
  end

  it 'should output the given phrase' do
    expect($stdout).to receive(:puts).with("Pretty bird!")

    parrot("Pretty bird!")
  end

  it 'should return the given phrase' do
    phrase = parrot("Pretty bird!")

    expect(phrase).to eq("Pretty bird!")
  end
end
