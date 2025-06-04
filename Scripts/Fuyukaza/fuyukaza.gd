class_name Player

extends CharacterBody2D

@onready var state_machine:StateMachine = $"State Machine"
@onready var animation:AnimationPlayer = $Animation

func _ready(): state_machine.init()

func _process(delta): state_machine.process_frame(delta)

func _physics_process(delta): state_machine.process_physics(delta)

func _input(event):state_machine.process_input(event)

"""
@onready var animation = $AnimationPlayer
@onready var cshape = $CollisionShape2D
var LifePoint = 1200
const SPEED = 300.0
const JUMP_VELOCITY = -2600.0
var double_jump = true
var is_crouching = false 
var attacking = false
var standing_cshape = preload("res://Ressources/Fuyu_Standing.tres")
var crouching_cshape = preload("res://Ressources/Fuyu_Crouching.tres")


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") + 7000


func _physics_process(delta):
	velocity.x = 0
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	# Handle jump.
	if is_on_floor() and is_crouching:
		velocity.x = 0
	
	if Input.is_action_just_pressed("UP"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		if not is_on_floor() and double_jump:
			velocity.y = JUMP_VELOCITY
			double_jump = false
	if is_on_floor():
		double_jump = true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#return -1 and 1 on left or right
	if Input.is_action_pressed("LEFT") and not is_crouching and not attacking:
		$Sprite2D.flip_h = true
		velocity.x = -SPEED
	if Input.is_action_pressed("RIGHT") and not is_crouching and not attacking:
		$Sprite2D.flip_h = false
		velocity.x = SPEED
	if Input.is_action_pressed("DOWN"):
		crouch()
	elif Input.is_action_just_released("DOWN"):
		stand()
	update_animation()
	move_and_slide()

func update_animation():
	if not attacking:
	#WALKING IDLE 
		if velocity.x != 0 :
			animation.play("WALK")
		if velocity.x == 0 and not is_crouching:
			animation.play("IDLE")
		#JUMP FALL
		if velocity.y < 0:
			animation.play("JUMP")
		if velocity.y > 0:
			animation.play("JUMP")
		#CROUCHING
		if is_on_floor() and is_crouching:
			#FOR SOME REASON ONLY THE FIRST FRAME OF THE CROUNCHING ANIMATION WORKS
			print("coucou CROUNCHING")
			animation.play("CROUCHING")

func crouch():
	if is_crouching:
		return
	else:
		is_crouching = true
		cshape.shape = crouching_cshape
		cshape.position.y = -110

func stand():
	if is_crouching == false:
		return
	else:
		is_crouching = false
		cshape.shape = standing_cshape
		cshape.position.y = -167

func attack():
	#LP
	attacking = true
	if Input.is_action_pressed("LP") and is_on_floor():
		velocity.x = 0
		animation.play("LP")
		if $Sprite2D.flip_h :
			position.x -= 10
		else:
			position.x += 10
"""
	

