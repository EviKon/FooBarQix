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

    context 'when it gets 5' do
      subject { instance.calculator(5) }

      it 'returns Bar' do
        expect(subject).to eql('Bar')
      end
    end

    context 'when it get a multiple of 5' do
      subject { instance.calculator(10) }

      it 'returns Bar' do
        expect(subject).to eql('Bar')
      end
    end

    context 'when it gets 7' do
      subject { instance.calculator(7) }

      it 'returns Qix' do
        expect(subject).to eql('Qix')
      end
    end

    context 'when it gets a multiple of 7' do
      subject { instance.calculator(14) }

      it 'returns Qix' do
        expect(subject).to eql('Qix')
      end
    end
  end
end
