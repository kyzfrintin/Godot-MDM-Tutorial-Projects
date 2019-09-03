extends Node2D

func _ready():
	$MixingDeskMusic.quickplay("test")
#	$MixingDeskMusic.bind_to_param("epiano1", 0)
	
func _process(delta):
#	var vol : float = ((get_global_mouse_position().y * -1) + 600) / 600
#	$MixingDeskMusic.feed_param(0, vol)
	pass
	
func _on_MixingDeskMusic_beat(beat):
	$beat_label.text = ("BEAT " + str(beat))
	var rot = $Sprite.get("rotation_degrees")
	if rot != 20:
		$Sprite.set("rotation_degrees", 20)
	else:
		$Sprite.set("rotation_degrees", -20)

func _on_MixingDeskMusic_bar(bar):
	$bar_label.text = ("BAR " + str(bar))
	$Sprite.set("modulate", Color(rand_range(0,1),rand_range(0,1),rand_range(0,1)))