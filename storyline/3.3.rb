
puts <<-EOF
(To be continued...)
EOF

while answer = gets.chomp.downcase
  case answer
  # when "follow"
  #   @@path = 0
  #   break
  # when "inspect", "search", "look around"
  #   @@path = 1
  #   break
  when "restart", "start over", "reload"
    puts "\e[H\e[2J"
    exec("ruby Manifest.rb")
  when "quit", "give up", "exit"
    exit
  else
    puts "Invalid input\a"
  end
end