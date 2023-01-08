class Finder
  def index_of(list, value)
    arrCount = []
    list.each_with_index{ |el, i| arrCount << i if list[i].index(value) }
    arrCount
  end
end
