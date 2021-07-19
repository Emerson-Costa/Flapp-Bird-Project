extends Position2D

# Aqui irá carregar uma Cena, pode ser utilizado tanto para cena quanto para uma imagem.
const PIPE = preload("res://Scenes/Pipe.tscn")

func spaw_pipe():
	var pipe_instanced = PIPE.instance()
	randomize() # Não deixa repetir os numeros aleatórios
	var random_pipe_position = rand_range(-90, 45)
	pipe_instanced.position  = Vector2(0,random_pipe_position) 
	add_child(pipe_instanced)

# Foi inserirdo na cena um objeto chamado Time, depois selecionou o Timer e foi no guia Nó e add a função timeout()
func _on_Timer_timeout():
	spaw_pipe()


