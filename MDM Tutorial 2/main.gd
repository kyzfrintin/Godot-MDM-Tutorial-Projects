extends Node2D

func _ready():
	$MixingDeskMusic.init_song("test")
	$MixingDeskMusic.play("test")

func _on_song1_but_pressed():
	$MixingDeskMusic.queue_sequence(["test3", "test"], "bar", "loop")

func _on_track1_pressed():
	$MixingDeskMusic.toggle_fade("test", 0)
	
func _on_track2_pressed():
	$MixingDeskMusic.toggle_fade("test", 1)
	
func _on_song2_but_pressed():
	$MixingDeskMusic.queue_sequence(["test3", "test2"], "bar", "loop")

func _on_track3_pressed():
	$MixingDeskMusic.toggle_fade("test2", 0)

func _on_track4_pressed():
	$MixingDeskMusic.toggle_fade("test2", 1)
