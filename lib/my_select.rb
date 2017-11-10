def my_select(collection)
  if block_given?
    selected_array = []
    i = 0
    while i < collection.length
      selected_array.push(collection[i]) if yield collection[i]
      i += 1
    end
  else
    collection
  end
  selected_array
end
