def forms_sum array, result
  tuples = []
  array.each_with_index do |element, index|
    next unless element.is_a?(Integer)
    counter_part = result-element
    if array.include?(counter_part) && array.index(counter_part) != index
      tuples << [element, counter_part]
    end
  end
  tuples.empty? ? nil: tuples
end
array = [1,6,4,5]
puts forms_sum(array, 8)