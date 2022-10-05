def ask_rows
puts " Salut, bienvenue dans ma super omega pyramide ! combien d'étage veux-tu?"
print ">"
middle_row = gets.chomp.to_i
pyra_row =(middle_row-1)/2
return pyra_row
return middle_row
end

def full_pyramide(pyra_row)
puts"voici la pyramide:"
pyra_row = pyra_row+1
pyra_row.times do |i|
  (pyra_row-i).times do
    print" "
  end
  (1+i).times do
  print "#"
  end
  i.times do
    print"#"
  end
puts
end
end

def wtf_pyramide(pyra_row)
pyra_row.times do |i|
  (2+i).times do
    print" "
  end
  (pyra_row-i).times do
  print "#"
  end
 (pyra_row-i-1).times do
    print"#"
  end
puts
end
end


def perform
  pyra_row = ask_rows
  full_pyramide(pyra_row) 
  wtf_pyramide(pyra_row)
end

perform
