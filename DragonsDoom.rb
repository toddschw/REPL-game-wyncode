# REPL Game
# In the style of Choose Your Own Adventure

# Introductory Message to Player
puts <<EOP

Welcome to Dragon's Doom!
Your goal is to retrieve the precious Ruby
guarded by the Evil Dragon, Gindar

The game begins ... NOW!

In your quest to defeat Gindar, you now find yourself
walking a dusty road and arrive at a fork in the road.
One road leads left and the other leads right.
A troll suddenly appears and says:

"I can tell you which road leads to Gindar\'s Lair,
but first you must prove your worthiness by answering a riddle!"
The troll continues, \"What animal walks on four legs in the morning
two legs in the afternoon, and three legs in the evening?\"

EOP

# Construct a Loop Allowing Player to Answer Decision Point 1 or to
# get a Hint and Return to Answer Decision Point 1
loop_decision_point_1 = true
while loop_decision_point_1

  puts "\n" +"Options: \n (a)nswer \n (d)on't answer \n (g)et hint \n "
  option_decision_point_1 = gets.chomp.downcase

  case option_decision_point_1
  when "a","answer"
    print "Type your answer: "
    riddle_answer = gets.chomp.downcase
    if (riddle_answer == "humans" ) || (riddle_answer == "woman") || (riddle_answer ==  "human being") || (riddle_answer ==  "a woman") || (riddle_answer ==  "a human being") || (riddle_answer ==  "person") || (riddle_answer ==  "a person") || (riddle_answer ==  "a man") || (riddle_answer ==  "man") || (riddle_answer == "human") || (riddle_answer == "mankind") || (riddle_answer == "a human") || (riddle_answer == "human kind") || (riddle_answer == "human beings")
      puts "\n" + "\"Correct!\" says the troll."
      puts "\"Follow the left road to Gindar's Lair.\""
    else
      puts "\n" + "\"Incorrect!\" laughs the troll."
      puts "\"I will not tell you the road to Gindar's Lair.\""
    end
    loop_decision_point_1 = false
  when "d","don't answer"
    puts "\n" + "You decide to ignore the troll and take your chances."
    loop_decision_point_1 = false
  when "g","get hint"
    puts "\n" + "A baby crawls"
    puts "A man walks"
    puts "An old man carries a cane"
    puts "What would you like to do now?"
    loop_decision_point_1 = true
  else
    puts "\n" + "The troll wanders off leaving you to decide on your own."
    loop_decision_point_1 = false
  end
end

# Decision Point 2.  Pose Question and Get Answer
puts "\n" + "What road do you want to take to reach Gindar's Lair?"
puts "Options: left road, right road"
option_decision_point_2 = gets.chomp.downcase

# Player must answer Decision Point 2
# Options are  "right road" or "left road" or else the default option is invoked
# the only path that move the player forward is "left road"
# all others result in game over

# this phrase snippet will be reused for narrative in 2 branches of story
# use DRY programming
game_over_poison = "and eventually come upon a large forest." + "\n"
game_over_poison << "You enter the forest and spy a tree with delicious fruit" + "\n"
game_over_poison << "You pick one from the tree and bite in hungrily." + "\n"
game_over_poison << "Suddenly, you start to feel very dizzy...." + "\n"
game_over_poison << "and collapse to the ground." + "\n"

# this phrase will be diplaye anytime there is a game over
# use DRY programming
generic_game_over = "Sorry, but your journey has ended." + "\n"
generic_game_over << "---------------------------------" + "\n"
generic_game_over << "GAME OVER!" + "\n" + "\n"


if option_decision_point_2 == "right road" or option_decision_point_2 ==  "right"  # game over
  print "\n" + "You begin walking "
  puts game_over_poison
  puts generic_game_over
  exit
elsif option_decision_point_2 == "left road" or option_decision_point_2 == "left"   # leads onwards in journey
  # No output required.  Game continues below if statement
else # game over
  puts "\n" + "You decide to take your chances with the road on the right,"
  puts "and start walking."
  puts game_over_poison
  puts generic_game_over
  exit
end

# narrative continues.
puts "\n" + "After several days journey"
puts "through dense forests and accoss wide valleys"
puts "you finally arrive at your desination - Gindar's lair"
puts "Suddenly, you hear a horrible cry coming from the sky"
puts "and look up to see Gindar flying right at you."

# Decision Point 3.  Pose Question and Get Answer
puts "\n" + "What do you do?"
puts "Options: run, draw sword, stand ground"
option_decision_point_3 = gets.chomp.downcase

# this phrase snippet will be reused for narrative
# use DRY programming
game_over_flames = "\n" + "You run as quickly as you can," + "\n"
game_over_flames << "but Gindar is too fast." + "\n"
game_over_flames << "You hear a roar behind you from Gindar" + "\n"
game_over_flames << "and turn around to see a ball of flame" + "\n"
game_over_flames << "headed your way..." + "\n"

if option_decision_point_3 == "run"  # game over
  puts game_over_flames
  puts generic_game_over
  exit
elsif ( option_decision_point_3 == "draw sword" ) or ( option_decision_point_3 == "draw" )  # game over
  puts "\n" + "You draw your sword" + "\n"
  puts "But a whip of Gindar's tail knocks it from your grip"
  puts "You turn and run."
  puts game_over_flames
  puts generic_game_over
  exit
elsif option_decision_point_3 == "stand ground" or option_decision_point_3 == "stand"   # completes game
  # No output required.  Game continues below if statement
else # game over
  puts generic_game_over
  exit
end

# the rest is narrative, all game logic is over.
puts "\n" + "Gindar roars \"I am the most powerful dragon in the world!\""
puts "You challenge him to display his skills."
puts "Gindar exhausts himself over many hours proving his skills"
puts "allowing you to retrieve the precious Ruby and escape Gindar's lair."
puts "You return the Ruby to it's rightful owner, Princess Yvonne and she kisses you!" + "\n" + "\n"
puts "                     CONGRATULATIONS, YOU WIN!!!                        "
puts "                          ---  The End ---                              " + "\n" + "\n"
exit

# Game is Over

__END__

You can put stuff here and Ruby won't run it

You can document the game here

- Settings
  - A road
  - A forest
  - The lair of Gindar the Dragon

  Enemies are:
    - A troll
    - The tree/fruit in the forest
    - Gindar the Evil Dragon
