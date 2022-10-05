
def dice
  number = rand(1..6)
  puts number
  return number
end
def game(number,progress)
 if number > 1
   if number > 4
   progress = progress +1 
   puts " tu avance d'une marche"
   puts "marche:#{progress}"
   else
  puts "rien ne se passe"
  puts "marche:#{progress}"
   end
  else
    progress = progress -1
    puts "pourquoi tu recule?"
    puts "marche:#{progress}"
    if progress < 0
      progress= 0
    end
end
 return progress
end
def perform
  progress = 0
  nbdice = 0
  while progress != 10
  number = dice
  game(number,progress)
  progress = game(number,progress)
  nbdice= nbdice +1
  end
  puts "bravo le veau"
  puts "partie finie en #{nbdice}coups"
  return nbdice
end
def average_finish_time
  totalofdice = 0
  shortest = 1000
  longest = 0
  puts "combien de simulations ?"
  nbofgames = gets.chomp.to_i
  nbofgames.times do
    nbdice = perform
    totalofdice = totalofdice + nbdice
      if nbdice < shortest
    shortest = nbdice
  end
  if nbdice > longest
    longest = nbdice
  end
  end
  averagedice = totalofdice/nbofgames
  puts "moyenne:#{averagedice}coups"
  puts "partie la plus longue : #{longest}"
  puts "partie la plus courte : #{shortest}"
end

average_finish_time
