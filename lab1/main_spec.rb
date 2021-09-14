require 'rspec'
require './main.rb'

RSpec.describe "Main methods" do
  it "multiplies numbers" do
    a = 6
    b = 8
    expect(multiply(a, b)).to eq(48)
  end
  it "foobar leftO  20" do
    left = 20
    right = 4
    expect(foobar(left,right)).to eq(right)
  end
  it "foobar right 20" do
    left = 5
    right = 20
    expect(foobar(left,right)).to eq(right)
  end
  it "fiibar no20" do
    left = 4
    right = 6
    expect(foobar(left,right)).to eq(left+right)
  end
  it "greetings for under 18 years" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Shap', "19")
    expect(greeting).to eq("Привет, Alex Shap. Самое время заняться делом!")
  end
  it "greetings for upper 18 years" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Shap', 17)
    expect(greeting).to eq("Привет, Alex Shap. Тебе меньше 18 лет, но учиться программировать никогда не рано.")
  end
end