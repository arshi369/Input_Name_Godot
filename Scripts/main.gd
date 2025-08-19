extends Node2D

@onready var name_input = $CanvasLayer/LineEdit
@onready var confirm_button = $CanvasLayer/Button
@onready var message_label = $CanvasLayer/Label

func _ready():
	message_label.text = "Please Enter Your Name :"
	confirm_button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	var user_name = name_input.text.strip_edges()
	if user_name == "":
		message_label.text = "Try Again!"
	else:
		# اینجا اسم کاربر توی پیام نمایش داده می‌شه
		message_label.text = user_name + " Welcome 🎉"
	confirm_button.hide()
	name_input.hide()
