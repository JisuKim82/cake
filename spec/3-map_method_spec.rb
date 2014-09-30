require_relative '../3-map_method'

describe '#my_map' do
  context 'returns modified array based on' do 
    it 'addition' do
      expect([1,2,3].my_map{|x| x+1}).to eq [2,3,4]
    end

    it 'subtraction' do
      expect([1,2,3].my_map{|x| x-1}).to eq [0,1,2]
    end
  end
end