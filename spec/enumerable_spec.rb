# frozen_string_literal: true

require_relative '../enumerable.rb'

RSpec.describe Enumerable do
  let(:arr) { (1..10).to_a }

  context 'When block is given' do
    describe '#my_each' do
      it 'should iterate from every item on the array' do
        ans = []
        arr.my_each { |x| ans << x * 2 }
        expect(ans).to eql([2, 4, 6, 8, 10, 12, 14, 16, 18, 20])
      end
    end
  end

  context 'When no block is given' do
    describe '#my_each' do
      it 'should returns an Enumerator' do
        ans = arr.my_each
        expect(ans).to be_an Enumerator
      end
    end
  end

  context 'When block is given' do
    describe '#my_each_with_index' do
      it 'should Calls block with two arguments, the item and its index, for each item in enum' do
        ans = []
        arr.my_each_with_index { |number, i| ans << "#{i}: #{number}" }
        expect(ans).to eql(['0: 1', '1: 2', '2: 3', '3: 4', '4: 5', '5: 6', '6: 7', '7: 8', '8: 9', '9: 10'])
      end
    end
  end

  context 'When no block is given' do
    describe '#my_each_with_index' do
      it 'should returns an Enumerator' do
        ans = arr.my_each_with_index
        expect(ans).to be_an Enumerator
      end
    end
  end

  context 'When block is given' do
    describe '#my_select' do
      it 'should returns an array containing all elements of enum for which the given block returns a true value.' do
        ans = arr.my_select(&:even?)
        expect(ans).to eql([2, 4, 6, 8, 10])
      end
    end
  end

  context 'When block is no given' do
    describe '#my_select' do
      it 'should returns an Enumerator' do
        ans = arr.my_select
        expect(ans).to be_an Enumerator
      end
    end
  end

  context 'When the block returns true to every element' do
    describe '#my_all' do
      it 'should returns true if the block never returns false or nil' do
        ans = arr.my_all? { |number| number > 0 }
        expect(ans).to eql(true)
      end
    end
  end

  context 'When the block returns false to any element' do
    describe '#my_all?' do
      it 'should returns true if the block never returns false or nil' do
        ans = arr.my_all? { |number| number > 5 }
        expect(ans).to eql(false)
      end
    end
  end

  context 'When block returns true to any element' do
    describe '#my_any?' do
      it 'should returns true if the block ever returns a value other than false or nil.' do
        ans = arr.my_any? { |number| number > 5 }
        expect(ans).to eql(true)
      end
    end
  end

  context 'When block returns false to every element' do
    describe '#my_any?' do
      it 'should returns false if the block ever returns false or nil.' do
        ans = arr.my_any? { |number| number > 12 }
        expect(ans).to eql(false)
      end
    end
  end

  context 'When no block is given' do
    describe '#my_any' do
      it 'should return true if at least one of the collection members is not false or nil' do
        ans = [].my_any?
        expect(ans).to eql(false)
      end
    end
  end

  context 'When the block returns false to any element' do
    describe '#my_none?' do
      it 'should returns true if the block never returns true for all elements' do
        ans = arr.my_none? { |number| number == 12 }
        expect(ans).to eql(true)
      end
    end
  end

  context 'When the block returns true to any elemend' do
    describe '#my_none?' do
      it 'should returns false if the block never returns true for all elements' do
        ans = arr.my_none? { |number| number == 10 }
        expect(ans).to eql(false)
      end
    end
  end

  context 'When no block is given' do
    describe '#my_none' do
      it 'return true only if none of the collection members is true' do
        ans = [].my_none?
        expect(ans).to eql(true)
      end
    end
  end
end
