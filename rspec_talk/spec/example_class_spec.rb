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
    let(:number_counter) { double('NumberCounter') }
    let(:addr_number) { 1337 }

    before do
      allow(number_counter).to receive(:add_a_number)
      allow(number_counter).to receive(:print_the_total).and_return true
    end

    context 'external calls' do
      after do
        subject.side_effect_fun(number_counter, addr_number)
      end

      it 'adds a number' do
        expect(number_counter).to receive(:add_a_number).with(addr_number)
      end

      it 'prints the new total' do
        expect(number_counter).to receive(:print_the_total)
      end
    end

    it 'returns a confirmation message' do
      expect(subject.side_effect_fun(number_counter, addr_number)).to include('it works!!!!!')
    end
  end
end

describe 'NumberCounter' do
  describe '#add_a_number' do
    # xit 'adds the number to the total' do
    # end
  end

  describe 'print_the_total' do
    # xit 'prints the total' do
    # end
  end
end
