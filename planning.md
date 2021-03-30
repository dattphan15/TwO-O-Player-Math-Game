
Task 1: Extract Nouns for Classes
Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

- 

Task 2: Write their roles
What is the role for each class?

Player
  State: name of the player, score of the player (lives)
  Behaviour: switching current players, method to subtract lives when answered incorrect.

Game
  State: template of the game, looping depending on the player in state
  Behaviour:
  - contain the user I/O
  - include a method that access the math question method in question Class
  - include a method to change player turn or change round
  - include a method for when a a winner is decided
  - method to assess each answer

Starts game, makes players, keeps track of current player, gets question and evaluates answers then updates player appropriately, keeps track of when to end the game

Question
  State: store question answer
  Behaviour: 
  - method to generate random question between 1-2
  - method that asks the player the math question