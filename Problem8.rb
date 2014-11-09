series = File.read('Problem8_series.txt').gsub("\n",'')

array = series.to_s.chars.map(&:to_i)

max_product = 0

for i in 0...array.size-13
  product = array[i]
  for j in 1..12
    product *= array[i+j]
  end
  max_product = product if product > max_product
end

puts max_product