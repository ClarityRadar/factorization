require 'spec_helper'

RSpec.describe Riddle::Tuples do
  subject { described_class.new(number) }

  describe '#to_a' do
    context 'when the given number is 720720' do
      let(:number) { 720_720 }

      it 'is an instance of Array' do
        expect(subject.to_a).to be_an_instance_of(Array)
      end

      it 'is not empty' do
        expect(subject.to_a).to_not be_empty
      end

      it 'returns the expected list of tuples' do
        expected = [[2, 4], [3, 2], [5, 1], [7, 1], [11, 1], [13, 1]]

        expect(subject.to_a).to eq expected
      end
    end

    context 'when the number is 665280' do
      let(:number) { 665_280 }

      it 'returns the expected list of tuples' do
        expect(subject.to_a).to eq [[2, 6], [3, 3], [5, 1], [7, 1], [11, 1]]
      end
    end

    context 'when the given number is 171717' do
      let(:number) { 171_717 }

      it 'returns the expected list of tuples' do
        expect(subject.to_a).to eq [[3, 1], [7, 1], [13, 1], [17, 1], [37, 1]]
      end
    end
  end

  describe '#prime_divisors' do
    context 'when the given number is 171717' do
    end

    context 'when the given number is 720720' do
      let(:number) { 720_720 }

      it 'returns an instance of Array' do
        expect(subject.prime_divisors).to be_an_instance_of(Array)
      end

      it 'returns an Array of the prime divisors of 720720' do
        expect(subject.prime_divisors).to contain_exactly(2, 3, 5, 7, 11, 13)
      end
    end
  end
end
