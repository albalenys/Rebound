puts <<-EOF
For the first time, you scan the surrounding area. The beach is beautiful. The teal water foams over the white sands, the sky is a clear blue, and a towering volcanic mountain is the background to green palm trees.

The mountain is vast and ancient. You hope it remains in its restful slumber. As you look at the sleeping giant, your head struggles with a moment of clarity: Ignia. You are currenty in the island of Ignia. You are supposed to be here, you just don't remember why. The answer seems to flicker on and off until it completely dissipates.

As you try and orient yourself, a small bright green bird lands near your feet. It pecks at your boots, and you lightly shoo it away. Startled, it distances itself but quickly returns to its original spot, this time accompanied by three others. Annoyed, you can either [kick] or [ignore] them.
EOF

location = "Ignia"
while answer = gets.chomp.downcase
  case answer
  when "kick"
    @@path = 2
    break
  when "ignore"
    @@path = 3
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