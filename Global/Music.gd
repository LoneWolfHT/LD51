extends Node

var BASE_VOL = 0

var sounds = {}

# You can add sounds here
func _ready():
	new_sound("Music/MainMenu.ogg", BASE_VOL)
	new_sound("Music/Reading.ogg", BASE_VOL)
	new_sound("Music/LockPick.ogg", BASE_VOL)

	new_sound("Sounds/Select.wav", -12)
	new_sound("Sounds/NoPick.wav", -8)
	new_sound("Sounds/Pickup.wav", -8)
	new_sound("Sounds/BackButton.wav", -6)

func new_sound(name, volume):
	var audionode = AudioStreamPlayer.new()

	audionode.volume_db = BASE_VOL + volume
	audionode.stream = load("res://Assets/" + name)
	sounds[name] = {"node": audionode, "playpos": 0, "volume": volume}

	add_child(audionode)

	print("Loaded Music")

var _time = 0
func _process(delta):
	_time += delta

	if _time >= 0.4:
		_time = 0

		for sound in sounds:
			sounds[sound].node.volume_db = (BASE_VOL - (Settings.setting.audio_volume_shift / 2)) + sounds[sound].volume

func play(sound_name):
	if sounds[sound_name]:
		print("Playing sound " + sound_name)
		sounds[sound_name].node.play()

func play_low(sound_name, vol_shift):
	if sounds[sound_name]:
		print("Playing sound " + sound_name)
		sounds[sound_name].node.volume_db = (BASE_VOL - (Settings.setting.audio_volume_shift / 2)) + sounds[sound_name].volume + vol_shift
		sounds[sound_name].node.play()

func resume(sound_name):
	if sounds[sound_name]:
		print("Resuming sound " + sound_name)
		sounds[sound_name].node.play(sounds[sound_name].playpos)

func stop(sound_name):
	if sounds[sound_name]:
		print("Stopping sound " + sound_name)
		sounds[sound_name].playpos = sounds[sound_name].node.get_playback_position()
		sounds[sound_name].node.stop()

func fadestop(sound_name, steps: int = 5, size: int = 5):
	if sounds[sound_name]:
		print("Fading sound " + sound_name)
		var savevol = sounds[sound_name].volume
		for t in steps:
			yield(get_tree().create_timer(0.1), "timeout")
			sounds[sound_name].volume -= size

		stop(sound_name)
		sounds[sound_name].volume = savevol
