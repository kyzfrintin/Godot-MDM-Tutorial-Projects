extends Node2D

func _ready():
	$MixingDeskMusic.init_song("test")
	$MixingDeskMusic.play("test")
