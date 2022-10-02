extends Control

signal choice_click

# Called when the node enters the scene tree for the first time.
func _ready():
	if (self.connect("choice_click", get_parent(), "_choice_clicked") != OK):
		push_error("[Basic Page] Failed to connect to main menu")

func set_text(text: String):
	$Content/Text.bbcode_text = text

func _on_meta_clicked(meta):
	emit_signal("choice_click", meta)
