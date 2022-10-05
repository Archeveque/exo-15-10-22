def signup
  puts"donne ton mot de passe ou conséquence"
  user_password = gets.chomp
  return user_password
end
def login(user_password)
  puts " maintenant connecte toi"
   password = gets.chomp
 while password != user_password
  puts " ça arrive a tout le monde de se tromper, tu vas réussir je crois en toi"
 password = gets.chomp

end
end
def welcome_screen
  puts "congratulation tu es connecté"


end
def perform
 user_password = signup
 login(user_password)
 welcome_screen
end
perform
