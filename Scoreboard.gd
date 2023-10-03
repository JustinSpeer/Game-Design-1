extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var score = 0

func addPoint():
	score += 1
func subPoint(): score -= 1
func reset(): 	score = 0

func update():
	$lblOut.text = "Score: %d" % score

func _on_btn_update_pressed():
	var choice = $LineEdit.text.to_lower()
	if choice == "add": 
		addPoint()
	elif choice == "sub":
		subPoint()
	elif choice == "sub" or choice == "subtract":
		subPoint()
	else:
		OS.alert("Invalid choice!")
	update()

func _on_btn_reset_pressed():
	$lblOut.text = ""
	$Label2.text = ""
	$LineEdit.text = ""
