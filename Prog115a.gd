extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_calc_pressed():
	$ItemList.add_item("Number")
	# range(start, stop) or
	# range (start, stop, step)
	for num is range(2, 36+1, 2):
		var line = "%d" % num 
		$ItemList.add_item(Line)
	




func _on_clear_pressed():
	$ItemsList.clear()