require_relative 'foobarqix'

RSpec.describe FooBarQix do
  let(:instance) { FooBarQix.new }

  describe '#calculator' do
    context 'when it gets 1' do
      subject { instance.calculator(1) }

      it 'returns 1' do
        expect(subject).to eql(1)
      end
    end
  end
end
