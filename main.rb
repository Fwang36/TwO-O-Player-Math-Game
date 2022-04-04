require './player'
require './question'

def round
  q = Question.new
  print "#{@play1.name}: "
  print q.question
  ans = $stdin.gets.chomp

  if q.answer == ans.to_i
    puts "correct!"
    puts "#{@play1.name}: #{@play1.score}/3 vs #{@play2.name}: #{@play2.score}/3 "
  else 
    puts "incorrect!"
    @play1.score = @play1.score - 1
    puts "#{@play1.name}: #{@play1.score}/3 vs #{@play2.name}: #{@play2.score}/3 "
  end  
  puts "----- NEW TURN -----"

  q2 = Question.new
  print "#{@play2.name}:"
  print q2.question
  ans = $stdin.gets.chomp

  if q2.answer == ans.to_i
    puts "correct!"
    puts "#{@play1.name}: #{@play1.score}/3 vs #{@play2.name}: #{@play2.score}/3 "
  else 
    puts "incorrect!"
    @play2.score = @play2.score - 1
    puts "#{@play1.name}: #{@play1.score}/3 vs #{@play2.name}: #{@play2.score}/3 "
  end  

  if @play1.score == 0
    puts "#{@play2.name} wins with a score of #{@play2.score}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  elsif @play2.score == 0
    puts "#{@play1.name} wins with a score of #{@play1.score}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!" 
  else  
    round
  end
end 

def start
  puts "Please enter first player name"
  print "> "
  choice = $stdin.gets.chomp

  @play1 = Player.new(choice)

  puts "Please enter second player name"
  print "> "
  choice = $stdin.gets.chomp

  @play2 = Player.new(choice)
  round
end
start