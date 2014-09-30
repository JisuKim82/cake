#my map method

class Array
  def my_map(&block)
    return self.each unless block_given?
    result = []
    self.each {|element| result<<yield(element)}
    result
  end
end