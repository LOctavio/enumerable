require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*items)
    @list = *items
  end

  def each
    # rubocop:disable Style/For
    for i in 0..@list.length - 1
      # rubocop:enable Style/For
      yield @list[i]
    end
    @list
  end
end
