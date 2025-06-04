extends CharacterBody2D

@onready var animation = $AnimationPlayer
@onready var cshape = $CollisionShape2D
var LifePoint = 1200
const SPEED = 300.0
const JUMP_VELOCITY = -1850.0
const JUMP_VELO_2 = -1400.0
var double_jump = true
var is_crouching = false 
var standing_cshape = preload("res://Ressources/Fuyu_Standing.tres")
var crouching_cshape = preload("res://Ressources/Fuyu_Crouching.tres")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") + 5000


func _physics_process(delta):
	velocity.x = 0
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	# Handle jump.
	if is_on_floor() and is_crouching:
		velocity.x = 0
	
	if Input.is_action_just_pressed("UP") and double_jump:
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
			double_jump = false
		else :
			velocity.y = JUMP_VELO_2
	if is_on_floor():
		double_jump = true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#return -1 and 1 on left or right
	if Input.is_action_pressed("LEFT") and not is_crouching:
		$Sprite2D.flip_h = true
		velocity.x = -SPEED
	if Input.is_action_pressed("RIGHT") and not is_crouching:
		$Sprite2D.flip_h = false
		velocity.x = SPEED
	if Input.is_action_pressed("DOWN"):
		crouch()
	elif Input.is_action_just_released("DOWN"):
		stand()
	update_animation()
	move_and_slide()

func update_animation():
	if velocity.x != 0 :
		animation.play("WALK")
	if velocity.x == 0 and not is_crouching:
		animation.play("IDLE")
	if velocity.y < 0:
		animation.play("JUMP")
	if velocity.y > 0:
		animation.play("JUMP")
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
	

