extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btm_exit_pressed():
	get_tree().quit()






func _on_btm_clear_pressed():
	$txtLen.text = ""
	$txtWid.text = ""
	$lblOut.text = ""



func _on_btncalc_pressed():
	var len = int($txtLen.text)
	var wid = int($txtWid.text)
	var area = len * wid 
	var perim = 2 * len + 2 * wid
	$lblOut.text = "Area: " + str(area) + "\nPerimeter:" + str(perim)
