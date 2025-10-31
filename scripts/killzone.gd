extends Area2D

@onready var timer: Timer = $Timer
@onready var hurt_sound: AudioStreamPlayer2D = $Hurt_sound



func _on_body_entered(body: CharacterBody2D) -> void:
	Engine.time_scale = 0.5
	hurt_sound.play()
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout() -> void:
	Engine.time_scale=1
	get_tree().reload_current_scene()
