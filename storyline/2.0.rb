
puts <<-EOF
You get up and follow the girl into the jungle. Your body is completely fatigued and struggles to keep up. You quickly lose her in the trees. You are now alone and defenseless in an unkno--wait. Did you hear that? You look around frantically but see no sign of life. Then you hear the low growling sound again, this time noticing that it is originating from your stomach: you are starving. Who knows when was the last time you ate? As if in sync with your thoughts, two yellow eyes and claws pounce at you from the shadows.

Time seems to suspend for a moment as you quickly ponder whether to [run] or [fight].
EOF

while answer = gets.chomp.downcase
  case answer
  when "run"
    @@path = 0
    break
  when "fight"
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