extends Control

func _ready():
	Music.play("Music/MainMenu.ogg")

func _on_button_activate(button):
	Music.play("Sounds/Select.wav")

	if button != "quit":
		Music.fadestop("Music/MainMenu.ogg")

	if button == "new":
		Settings.setting.story_path = Settings.setting_default.story_path
		Settings.setting.current_page = Settings.setting_default.current_page
		Settings.setting.items = Settings.setting_default.items

		Settings.update()
	elif button == "quit":
		Quit.quit()
