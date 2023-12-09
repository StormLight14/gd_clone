extends CharacterBody2D


const SPEED = 310.0
const JUMP_VELOCITY = -450.0

enum {
	NORMAL,
	ROCKET,
	WAVE,
	SPIDER,
	BALL,
}

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var start_pos = Vector2.ZERO

var current_mode = NORMAL;

func _ready():
	start_pos = global_position
	GameValues.current_level = 0

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	var direction = Vector2(1, 0)
	velocity.x = direction.x * SPEED
	
	match current_mode:
		NORMAL:
			normal_controls(delta)
		ROCKET:
			pass
		WAVE:
			pass
		SPIDER:
			pass
		BALL:
			pass

	move_and_slide()
	if velocity.x == 0:
		_on_hurtbox_body_entered(self)

func normal_controls(delta):
	# Handle Jump.
	if Input.is_action_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

func _on_hurtbox_body_entered(body):
	global_position = start_pos
