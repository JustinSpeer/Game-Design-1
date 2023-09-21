extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_button_pressed():
	# random num (min, max) = randi() % (max - min) min
	# Max is not included
	var len = randi() % (14 - 1) + 1  # (1-13)
	var wid = randi() % (23 - 2) + 2  # (2-22)
	var area = len * wid
	var rnd = randi()  # (0.0, 0.999)
	var rnd2 = randf_range (-5., 5.)  # [-5.0, 5.0]
	# %d int, means float, %.#f means round to # decimals (%.2f)
	# \n newline, \t tab space
	$label.text = "Len: %d\nWid: %d\nArea: %d\nRnd1: %f\nRnd2: %f" \
			% [len, wid, area, rnd, rnd2]
