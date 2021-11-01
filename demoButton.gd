extends Button

export var referencePath = ""
export(bool) var startFouced = false;

func _ready():
	if(startFouced):
		grab_focus()
		
	connect("mouse_entered", self, "_on_Button_mouse_entered")
	connect("pressed", self,"_on_Button_Pressed")
	
func _on_Button_mouse_entered():
	grab_focus()
	
func _on_Button_Pressed():
	if (referencePath != ""):
		get_tree().change_scene(referencePath)
	else:
		get_tree().quit();
