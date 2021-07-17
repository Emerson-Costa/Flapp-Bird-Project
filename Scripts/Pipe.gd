extends Area2D

# Movimentando o cano para esquerda com este metodo
func _physics_process(_delta):
	translate(Vector2(-2,0))
