#reverse a string without using split and reverse
def reverse_string s
  string_array = reversed_string_array = tmp_array = []
  s.chars.each do |char|
    if char == ' '
      string_array << tmp_array.join
      tmp_array = []
    else
      tmp_array << char
    end
  end
  string_array << tmp_array.join
  p string_array
  string_array.size.times { reversed_string_array << string_array.pop }
  reversed_string_array
end

p reverse_string("Today is Friday")