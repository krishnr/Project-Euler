for a in 1..1000
  for b in 1..1000
    if Math.sqrt(a*a + b*b) % 1 == 0
      c = Math.sqrt(a*a + b*b).to_i
      if a + b + c == 1000
        puts "a: #{a} \nb: #{b} \nc: #{c}"
        puts a*b*c
        abort
      end
    end
  end
end