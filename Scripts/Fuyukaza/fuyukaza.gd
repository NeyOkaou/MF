extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -700.0
var double_jump = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") + 1000


func _physics_process(delta):
	velocity.x = 0
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	
	if Input.is_action_just_pressed("UP") and double_jump:
		velocity.y = JUMP_VELOCITY
		double_jump = false
	if is_on_floor():
		double_jump = true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#return -1 and 1 on left or right
	if Input.is_action_pressed("LEFT"):
		$Sprite2D.flip_h = true
		velocity.x = -SPEED
	if Input.is_action_pressed("RIGHT"):
		$Sprite2D.flip_h = false
		velocity.x = SPEED
	move_and_slide()
