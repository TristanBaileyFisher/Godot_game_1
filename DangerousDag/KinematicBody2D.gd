extends KinematicBody2D

const UP = Vector2(0, -1)
var gravity = 1500
var horizontal_gravity_scale = 0.5  # Adjust this value as needed
var can_jump = true

onready var ap = $AnimationPlayer
onready var sprite = $Sprite2D

var velocity = Vector2()

func _physics_process(delta):
	if !is_on_floor():  # Apply gravity only when not on the floor
		velocity.y += gravity * delta
	else:
		velocity.y = 0  # Reset vertical velocity when on the floor
		can_jump = true  # Reset jump ability when landing
	
	var horizontal_direction = 0
	if Input.is_action_pressed("ui_right"):
		horizontal_direction += 1
	if Input.is_action_pressed("ui_left"):
		horizontal_direction -= 1
	
	velocity.x = 300 * horizontal_direction

	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			velocity.y = -600
			can_jump = true
	elif can_jump and Input.is_action_just_pressed("ui_up"):
		velocity.y = -600
		can_jump = false
			
	move_and_slide(velocity, UP)
	update_animation(velocity)
	switch_direction(horizontal_direction)
	
func update_animation(velocity):
	if is_on_floor():
		if velocity.x == 0:
			ap.play("Idle")
		else:
			ap.play("Run")
	else:
		if velocity.y < 0:
			ap.play("jump")
		elif velocity.y > 0:
			ap.play("fall")

func switch_direction(horizontal_direction):
	sprite.flip_h = (horizontal_direction == -1)
	sprite.position.x = horizontal_direction * 4
