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

    context 'when it gets 3' do
      subject { instance.calculator(3) }

      it 'returns Foo' do
        expect(subject).to eql('Foo')
      end
    end

    context 'when it gets a multiple of 3' do
      subject { instance.calculator(6) }

      it 'returns Foo' do
        expect(subject).to eql('Foo')
      end
    end
  end
end
