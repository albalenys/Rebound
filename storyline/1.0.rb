# @@inventory.display

puts <<-EOF
You slowly open your eyes to find the sun's rays burning with a white vengence. Your skin has been scorched and your throat aches for water. As you clumsily sit up, you suddenly become aware of a blaring headache. 'You're finally awake!' A small girl with a head full of pink curls is looking at you. She is smiling but you can also see her concern. 'How are you feeling? From the looks of it, you are lucky to be alive!'

Her bright green eyes suddenly widen. You follow her stare to your arm. A strange [bluish green mark] is swirled onto your arm. Without saying a word, the girl runs off into the distance.

You momentarily wonder about the strange occurance but quickly are interrupted by the realization that you are now alone. You can either [follow] the child or [inspect] your surroundings.
EOF

while answer = gets.chomp.downcase
  case answer
  when "follow"
    @@path = 0
    break
  when "inspect", "search", "look around"
    @@path = 1
    break
  when "restart", "start over", "reload"
    puts "\e[H\e[2J"
    exec("ruby Manifest.rb")
  when "quit", "give up", "exit"
    exit
  else
    puts "Invalid input\a"
  end
end