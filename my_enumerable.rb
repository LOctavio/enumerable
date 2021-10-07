module MyEnumerable
  def all?
    value = true
    each do |item|
      value = false unless yield item
    end
    value
  end
end
