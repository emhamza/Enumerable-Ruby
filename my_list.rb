require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end
