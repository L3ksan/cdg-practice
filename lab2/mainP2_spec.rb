require 'rspec'
require '../lab2/mainP2.rb'

RSpec.describe "MainP2 methods" do
  it "#" do
    number = 2
    arr = {}
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Pikachu", "Yellow", "Bulbasaur", "Green" )
    final_array = {"Pikachu"=>"Yellow", "Bulbasaur"=>"Green"}
    expect(add_n_pokemon_to_base(number,arr)).to eq(final_array)
  end
  it "#loop_getting_int_value" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('ab', 'bc', "20")
    expect(repeat_int_input).to eq(20)
  end
end