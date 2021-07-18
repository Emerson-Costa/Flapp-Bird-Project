extends KinematicBody2D

# export deixa a variavel visível no painel de objetos
export var gravity = 400
export var jump_speed = -200
var velocity = Vector2()

# Simulando a gravidade do objeto
func _physics_process(delta):
	velocity.y +=gravity * delta
	velocity = move_and_slide(velocity)
	jump()
	
func jump():
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	



