class MyList
  def initialize(*items)
    @list = *items
  end

  def each
    for i in 0..@list.length - 1
      yield @list[i]
    end
    @list
  end
end
