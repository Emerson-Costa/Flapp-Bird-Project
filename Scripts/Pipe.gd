extends Area2D

# Movimentando o cano para esquerda com este metodo
func _physics_process(_delta):
	translate(Vector2(-2,0))


func _on_IncreaseScoreArea_body_entered(body):
	body.increase_score()
