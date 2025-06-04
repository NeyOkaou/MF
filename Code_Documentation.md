# Mood Fight Code documentation
 So I don't really know how to make a proper documentation so far but I will do my best to keep it as clear as possible.
 If someone read this please keep in mind that my english is not perfect so I might make typo or lexical mistakes. Furthermore I'm doing this documentation for me first, sorry if some explanation looks weird to you, I will probably fix them later on. Last but not least this is NOT a frame data documention meaning that if you expected to find stats and data about the characters etc I highly recommands you to check this google doc cause I will likely put everything i can think of in it. 

Data and statistiques about the game : https://docs.google.com/spreadsheets/d/1_DQWgpiEVA_twk4NrlmrZZrZhjFApkpSfEEchqy67CE/edit?gid=2081176227#gid=2081176227

All component that are marked with (*) are subject to change
# Assets
- Contains the graphics and audio of the project : stages sprites, character animation , sounds and musics.
# Ressources *
- So far this folder allows me to stock the different hitboxs my character will have.
# Scenes 
## This is where i put all the differents .tscn files of the project.
    - game : will likely be the main body of the game.
    
    - fuyukaza * : so far this is the only playable character as well as Gyaoon.

    - twilight_duel * : the first stage.

    - gyaoon* : another charchter added to test if everything works.
# Scripts 
## Will contains all the script of the project
### Here I will briefly describe what each file is for. We're not going too deep in the code, we're going to do it later on.
    -fuyukaza.gd : 

    -state.gd : Here I describe all the state the player can be in.

    -state_machine.gd : Tracks the current state, init the player base state and update the current state.

    -player_state.gd : List all the animation names that exist for the player.

    -idle.gd : Play the idle animation.

    -gyaoon.gd : Contains basic movement and physics to help with debuging.

# source :
- Godot FIGHTING GAME Tutorial | Getting Started & State Machine by helewrer3 : https://www.youtube.com/watch?v=TSl4bHW8Kg4&list=PLpyRatNKRJao43vPWVf-hBJ5M_oE4p3ad&index=6

- StateMachine by Nathan : https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine/
