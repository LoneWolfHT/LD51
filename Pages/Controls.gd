extends Panel

signal go_back

var _in = [false, false]
enum _ina {Panel, Label}

func _ready():
	if (self.connect("go_back", get_parent().get_parent(), "_option_back_clicked") != OK):
		push_error("[Controls] Failed to connect to game")

	$Items.text = "Items: %d" % Settings.setting.items.size()

func _on_Back_pressed():
	emit_signal("go_back")

func _on_Items_pressed():
	var output = ""

	Music.play("Sounds/BackButton.wav")

	if Settings.setting.items.empty():
		output = "[b]You have no special items[/b]"
	else:
		for item in Settings.setting.items:
			output += "[color=#ffa700][url={\"page\": 22}]%s[/url][/color]" % item

	$ItemPanel/Label.bbcode_text = output
	$Items.text = "Items: %d" % Settings.setting.items.size()
	$ItemPanel.visible = !$ItemPanel.visible
	_in = [true, false]

func _item_changed():
	$Items.text = "Items: %d" % Settings.setting.items.size()

func _on_Label_meta_clicked(meta):
	get_parent().get_parent().show_page(JSON.parse(meta).result)
	Music.play("Sounds/Select.wav")

func _on_Label_mouse_entered():
	_in[_ina.Label] = true

func _on_Label_mouse_exited():
	_in[_ina.Label] = false

func _on_ItemPanel_mouse_entered():
	_in[_ina.Panel] = true

func _on_ItemPanel_mouse_exited():
	_in[_ina.Panel] = false

func _process(_delta):
	if _in[_ina.Label] == false && _in[_ina.Panel] == false && $ItemPanel.visible:
		$ItemPanel.visible = false
