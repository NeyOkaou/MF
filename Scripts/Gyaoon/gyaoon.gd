extends CharacterBody2D

@onready var animation = $AnimationPlayer
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	velocity.x = 0
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("ui_left"):
		$Sprite2D.flip_h = true
		velocity.x = -SPEED
	if Input.is_action_pressed("ui_right"):
		$Sprite2D.flip_h = false
		velocity.x = SPEED
	
	update_animation()
	move_and_slide()
	
func update_animation():
	if velocity.x != 0:
		pass
	else:
		animation.play("IDLE")

