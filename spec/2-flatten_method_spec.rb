require_relative 'spec_helper'
require_relative '../2-flatten_method'

describe 'Flatten Method' do
  it 'returns itself if array passed in is a single dimensional array' do
    expect(flatten_method([1,2,3])).to eq [1,2,3]
  end

  it 'returns [1,2,3] when [1,[2,3]] is passed in' do 
    expect(flatten_method([1,[2,3]])).to eq [1,2,3]
  end
end