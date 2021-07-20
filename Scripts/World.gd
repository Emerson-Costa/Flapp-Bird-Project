extends Node2D

# Referencia o objeto do pássaro na cena do world
onready var player_ref = get_node("Bird")

# Referencia do objeto de animação do fundo da tela
onready var background_ref = get_node("Background/AnimationPlayer")

# Referencia para animação dos canos
onready var pipe_spawner = get_node("PipeSpawner")


func _ready():
	# Conectando o sinal game over na animação do fundo e chamando a outra função stop_parallax
	player_ref.connect("game_over", background_ref, "stop_parallax")
	player_ref.connect("game_over", pipe_spawner, "stop_pipes_spawn")
