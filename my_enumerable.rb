module MyEnumerable
  def all?
    value = true
    each do |item|
      value = false unless yield item
    end
    value
  end

  def any?
    value = false
    each do |item|
      value = true if yield item
    end
    value
  end
end
