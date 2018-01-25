require_relative 'foobarqix'

RSpec.describe FooBarQix do
  let(:digit) { 0 }
  let(:instance) { FooBarQix.new(digit) }

  describe '#calculator' do
    subject { instance.calculator }

    context 'when it gets 1' do
      let(:digit) { 1 }

      it 'returns 1' do
        expect(subject).to eql(1)
      end
    end

    context 'when it gets 3' do
      let(:digit) { 3 }

      it 'returns Foo' do
        expect(subject).to eql('FooFoo')
      end
    end

    context 'when it gets a multiple of 3' do
      let(:digit) { 6 }

      it 'returns Foo' do
        expect(subject).to eql('Foo')
      end
    end

    context 'when it gets 5' do
      let(:digit) { 5 }

      it 'returns Bar' do
        expect(subject).to eql('BarBar')
      end
    end

    context 'when it get a multiple of 5' do
      let(:digit) { 10 }

      it 'returns Bar' do
        expect(subject).to eql('Bar')
      end
    end

    context 'when it gets 7' do
      let(:digit) { 7 }

      it 'returns Qix' do
        expect(subject).to eql('QixQix')
      end
    end

    context 'when it gets a multiple of 7' do
      let(:digit) { 14 }

      it 'returns Qix' do
        expect(subject).to eql('Qix')
      end
    end

    context 'when it gets a number which contains 3' do
      let(:digit) { 13 }

      it 'returns Foo' do
        expect(subject).to eql('Foo')
      end
    end

    context 'when it gets a number which contains 5' do
      let(:digit) { 52 }
      it 'returns Bar' do
        expect(subject).to eql('Bar')
      end
    end

    context 'when it gets a number which contains 7' do
      let(:digit) { 74 }

      it 'returns Qix' do
        expect(subject).to eql('Qix')
      end
    end
  end
end
