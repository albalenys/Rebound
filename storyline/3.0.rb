dice = Dice.new
if dice.roll(5)
  puts <<-EOF
  You have never ran faster in your life...

  Despite the fact that you're wounded, dehydrated, and fatigued, you were able to outrun the beast.
  (to be continued...)
  You may [restart] or [quit] in the meanwhile.
  EOF

  while answer = gets.chomp.downcase
    case answer
    when "restart", "start over", "reload"
      puts "\e[H\e[2J"
      exec("ruby Manifest.rb")
    when "quit", "give up", "exit"
      exit
    else
      puts "Invalid input\a"
    end
  end
else
  puts <<-EOF
  You have never ran faster in your life...

  Unfortunately, it wasn't fast enough.
  You were shredded apart.
  Would you like to [restart] or [quit] like the sniffling loser you are?
  EOF

  while answer = gets.chomp.downcase
    case answer
    when "restart", "start over", "reload"
      puts "\e[H\e[2J"
      exec("ruby Manifest.rb")
    when "quit", "give up", "exit"
      exit
    else
      puts "Invalid input\a"
    end
  end
end