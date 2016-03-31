require_relative "../Dice.rb"

dice = Dice.new
if dice.roll(10000) == true
  puts <<-EOF
  Fight. That is what's running through your mind as you stare into the cold yellow eyes. Fight.

  Suddenly you feel a surge of energy running through your body. The feeling is so strong that you are unable to control it. Sensing the incoming tremor, the beast narrowly escapes before a violent pulse radiates from you. The surrounding trees collapse in your wake.

  You stare blankly at the wreck, unable to process the occurance. From a distance, you are able to detect an elderly man, accompanied by the pink haired girl from earlier, staring at you with awe.

  Then, complete darkness.

  [To be continued...]
  EOF

  @@elemental = true

  while answer = gets.chomp.downcase
    case answer
    when "restart", "start over", "reload"
      puts "\e[H\e[2J"
      exec("ruby Rebound.rb")
    when "quit", "give up"
      exit
    else
      puts "Invalid input\a"
    end
  end

else
  puts <<-EOF
  "Once more into the fray
  Into the last good fight I’ll ever know
  Live and die on this day...
  Live and die on this day..."

  You were shredded apart.
  Would you like to [restart] or [quit] like the sniffling loser you are?
  EOF

  while answer = gets.chomp.downcase
    case answer
    when "restart", "start over", "reload"
      puts "\e[H\e[2J"
      exec("ruby Rebound.rb")
    when "quit", "give up"
      exit
    else
      puts "Invalid input\a"
    end
  end
end