a = []
series = File.open('Problem11-grid.txt') do |f|
  f.each_line do |line|
    num = line.split.map(&:to_i)
    a << num
  end
end

greatest_product = 0

column_length = a.length - 1
row_length = a[0].length - 1

for i in 0..column_length
  for j in 0..row_length

    horiz_product = 0
    vert_product = 0
    right_diag_product = 0
    left_diag_product = 0

    horiz_product = a[i][j] * a[i][j+1] * a[i][j+2] * a[i][j+3] if column_length - j > 2
    vert_product = a[i][j] * a[i+1][j] * a[i+2][j] * a[i+3][j] if row_length - i > 2
    right_diag_product = a[i][j] * a[i+1][j+1] * a[i+2][j+2] * a[i+3][j+3] if row_length - i > 2 && column_length - j > 2
    left_diag_product = a[i][j] * a[i+1][j-1] * a[i+2][j-2] * a[i+3][j-3] if row_length - i > 2 && j > 2

    max_product = [vert_product, horiz_product, right_diag_product, left_diag_product].max

    greatest_product = max_product if max_product > greatest_product
  end
end

puts greatest_product