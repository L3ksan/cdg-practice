require 'rspec'
require './mainP1.rb'

RSpec.describe "MainP1 methods" do
  it "#input_word_havent_cs" do
    number = rand(10)
    word = "hello"
    expect(cs_power_of_two(number,word)).to eq(word.reverse)
  end
  it "#input_word_have_cs_at_end" do
    number = rand(10)
    word = "helloCS"
    expect(cs_power_of_two(number,word)).to eq(2**word.length)
  end
  it "#loop_getting_int_value" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('ab', 'bc', "20")
    expect(repeat_int_input).to eq(20)
  end
end
