# inserting new test comment to add to main branch through pull request on GitHub

import random
# setting player and computor scors to 0 at start of game.
player_score = 0
computer_score = 0

def greeting():
  # giving the player a greeting at the start of the game. Accept this may not need to be a function but cleaner.
  # first entry ask
  player_name = input('Before we start, please tell me your name.')
  return f"""
  Hi {player_name}! Welcome to my first game!
  
  The game is Rock Paper Scissors and it's best of 3.
  
  Good Luck i\'m rooting for you! #rise of the machines...
  
  Now to the game:"""
  
def get_choices():
  #Creating the options for the game in the form of a list and defining player choice constant
  Game_options =['rock', 'paper', 'scissors']

  player_choice = input('''Please enter a choice. Either rock, paper or scissors: 
''')
  #While loop to confirm player entry is in the correct format and from the list of game options.
  check = 0
  while check == 0:
    if player_choice not in Game_options:
      player_choice = input('''Please enter a choice. Either rock, paper or scissors: 
''')
    else:
      check += 1
 #defining the computer choice.
  computer_choice = random.choice(Game_options)
 #gerating a dict of player and computor choices for the round.
  choices = {'player': player_choice, 'computer': computer_choice}
  return choices

def check_win(player, computer):
  #calling the global constants into the function. These were defined in line 5-6.
  global player_score, computer_score
  #printing outcome of the round
  print(f'''
  You chose {player}, computer chose {computer}
''')
  #nested If/elif to check winner and return outcome. winner also adds 1 to the constants computer_score and player_score respectivly.
  if player == computer:
    return "It's a tie!"
  elif player == 'rock':
    if computer == 'scissors':
      player_score = player_score + 1
      return 'Rock smashes scissors! You win!'
    else:
      computer_score = computer_score + 1
      return 'Paper covers rock! You Lose!'
  elif player == 'paper':
    if computer == 'scissors':
      computer_score = computer_score + 1
      return 'scissors cut paper! You Lose!'
    else:
      player_score = player_score + 1
      return 'Paper covers rock! You Win.'
  elif player == 'scissors':
    if computer == 'paper':
      player_score = player_score + 1
      return 'Scissors cut paper! You Win!'
    else:
      computer_score = computer_score + 1
      return 'Paper covers rock! You Lose.'

  
print(greeting())

# Adding in loop  to contine the game if player or computor score is less than 3. If not game will end and display final score
while player_score < 3 and computer_score < 3:
  choices = get_choices()
# dict defined in the 'get_choices' function (line 22)
  outcome = check_win(choices['player'], choices['computer'])

  print(outcome)
  print(f'''
  Your score is {player_score} vs computer score is {computer_score}
  ''')

print('Thanks for playing!')

#Check to see who is winner and dispaly correct message
if player_score == 3:
  print(f'''Well Done! you beat the machine! #downwithskynet
Your score is {player_score} vs computer score is {computer_score}''')
else:
  print(f'''Oh no! the computor won.... Better luck next time.
Your score is {player_score} vs computer score is {computer_score}''')
