game = {'xbox' : 'Halo', 'PS' : 'Hell Divers', 'console' : 'Switch'}

print(game['xbox'])

game['xbox'] = 'Gears of war'

print(game['xbox'])

print(game.get("console", "Not defined"))

print(game.pop('console'))

print(game.values())

print('xbox' in game)

game_list = list(game.values())

print(game_list)

game['switch'] = 'Cult of the Lamb'

print(game)

game_copy = game.copy()