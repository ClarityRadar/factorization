require 'spec_helper'

RSpec.describe Riddle::NumberDivisors do
  subject { described_class.new(number) }

  describe '#to_a' do
    context 'when number is equal to 170170' do
      let(:number) { 170_170 }

      it 'is an instance of Array' do
        expect(subject.to_a).to be_an_instance_of(Array)
      end

      it 'is nonempty' do
        expect(subject.to_a).to_not be_empty
      end
    end
  end

  describe '#size' do
    context 'when number is equal to 170170' do
      let(:number) { 170_170 }

      it 'has a size of 64' do
        expect(subject.size).to eq 64
      end
    end
  end
end
