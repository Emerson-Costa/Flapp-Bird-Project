extends CanvasLayer

# Aqui pegaa referência de um Label
onready var score_label = get_node("Label")

func _ready():
	score_label.text = str(0)

# Método para inserir pontuação
func increase_score(score):
	score_label.text = str(score)
