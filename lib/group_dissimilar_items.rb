def group_dissimilar_lots lots
  lot_array = []
  i = 0
  lots.each do |lot|
    puts "lot hash: #{lot_array}"
    color, type = lot.split
    lot_array[i] ||= []
    if lot_array[i].any? {|array| array.include?(color) || array.include?(type) }
      lot_array[i+1] = []
      lot_array[i+1] << [color, type]
    else
      lot_array[i] << [color, type]
    end
    i += 1 if (lot_array[i].size == 3)
  end

  lot_array.map {|h| h.map {|word_array| word_array.join(' ')}}
end

lots = ["green pen", "blue ball", "green ball", "red sofa", "blue ball", "yellow sofa"]
p group_dissimilar_lots(lots)

# output: [["green pen", "blue ball", "red sofa"], ["green ball", "yellow sofa"], ["blue ball"]]