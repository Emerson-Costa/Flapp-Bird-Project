extends KinematicBody2D

# Sinal para incrementação do Score
signal increase_score

# Sinal para Acabar como jogo
signal game_over


# export deixa a variavel visível no painel de objetos
export var gravity = 400
export var jump_speed = -200
var velocity = Vector2()

var score = 0

# Simulando a gravidade do objeto
func _physics_process(delta):
	velocity.y +=gravity * delta
	velocity = move_and_slide(velocity)
	jump()
	
func jump():
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	

func increase_score():
	score += 1
	# Pega o método da interface e passa como parametro o score
	emit_signal("increase_score", score)
	


func on_kill_bird():
	set_physics_process(false)
	emit_signal("game_over")
