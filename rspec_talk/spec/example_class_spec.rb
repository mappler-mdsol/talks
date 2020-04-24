require 'rspec'
require 'example_class'

describe 'Example' do
  subject { ExampleClass.new }

  describe '#my_reverser' do
    it 'reverses the given word' do
      expect(subject.my_reverser('FooBar')).to eq('raBooF')
    end
  end

  describe '#side_effect_fun' do
  end
end
