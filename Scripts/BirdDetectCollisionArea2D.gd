extends Area2D


signal kill_bird


# Colocamos "_" antes do parametro, queremos dizer não vamos utilizar este parametro
func _on_DetectCollisionArea2D_body_entered(_body):
	emit_signal("kill_bird")
