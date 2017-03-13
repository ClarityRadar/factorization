require 'spec_helper'

RSpec.describe Riddle::PrimeDivisors do
  subject { described_class.new(input_number) }

  describe '#number' do
    let(:input_number) { 177_777 }

    context 'when number is 177_777' do
      it 'responds to number' do
        expect(subject).to respond_to :number
      end

      it 'returns 177_777' do
        expect(subject.number).to eq 177_777
      end
    end
  end

  describe '#to_a' do
    let(:input_number) { 177_777 }

    it 'returns a nonempty array' do
      expect(subject.to_a).to_not be_empty
    end

    it 'is an instance of Array' do
      expect(subject.to_a).to be_an_instance_of(Array)
    end

    it 'returns the expected values' do
      expect(subject.to_a).to contain_exactly(3, 19_753)
    end
  end
end
