module MyEnumerable
  def all?(&block)
    each { |element| return false unless block.call(element) }
    true
  end

  def any?(&block)
    each { |element| return true if block.call(element) }
    false
  end

  def filter(&block)
    result = []
    each { |element| result << element if block.call(element) }
    result
  end
end
