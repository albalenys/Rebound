
puts <<-EOF
(To be continued...)
EOF

while answer = gets.chomp.downcase
  case answer
  # when "kick"
  #   @@path = 2
  #   break
  # when "ignore"
  #   @@path = 3
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