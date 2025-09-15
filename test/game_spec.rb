# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bowling/game'

describe Bowling::Game do
  describe '#roll' do
    it 'requires an argument which is the number of pins knocked down' do
      expect { subject.roll }.to raise_error(ArgumentError)
    end

    it 'accepts a valid number of pins knocked down' do
      expect { subject.roll(0) }.to_not raise_error
      expect { subject.roll(7) }.to_not raise_error
      expect { subject.roll(10) }.to_not raise_error
    end

    it 'raises an argument error when given incorrect number of pins' do
      pending 'not yet implemented'

      expect { subject.roll(-1) }.to raise_error(ArgumentError)
      expect { subject.roll(11) }.to raise_error(ArgumentError)
      expect { subject.roll(100) }.to raise_error(ArgumentError)
    end
  end

  describe '#score' do
    it 'returns the final score of the game' do
      pending 'not yet implemented'

      [[1, 4], [4, 5], [6, 4], [5, 5], [10,], [0, 1], [7, 3], [6, 4], [10,], [2, 8, 6]].each do |frame|
        frame.each do |pins|
          subject.roll(pins)
        end
      end

      expect(subject.score).to eq(133)
    end
  end
end
