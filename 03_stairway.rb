def initialisation
 return progress
end

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
end
 return progress
end
def perform
  progress = 0
  while progress != 10
  number = dice
  game(number,progress)
  sleep 0.5
  progress = game(number,progress)
  end
  puts "bravo le veau"
end

perform
