extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_btn_calc_pressed():
	$ItemList.add_item("Number      square       Square Root")
	for num in range(1, 51):
		var numsquared = num**2  # pow(num, 2)
		var numsqrt = sprt(num)
		var line = "%d      %d     %.4f" % [num, numsquared, numsqrt]
		$ItemList.add_item(Line)
	pass



func _on_btn_clear_pressed():
	$ItemList.text.clear()



func _on_btn_exit_pressed():
	get_tree().quit()
