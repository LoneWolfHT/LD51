extends Control

signal success

var ROTATE_SPEED = 100

var _rng = RandomNumberGenerator.new()

var target_rot = 0
func new_lock(break_sound: bool = false):
	target_rot = _rng.randi_range(0, 360)

	if break_sound:
		$Countdown/Break.play()

	$Anims/KeyHole/PaperClip.global_rotation_degrees = 180
	$Anims.play("RESET")
	$Anims.play("Start")

	$Timer.start(10)

func _ready():
	_rng.randomize()

	if (self.connect("success", get_parent(), "_lockpick_success") != OK):
		push_error("[Basic Page] Failed to connect to main menu")

func cmod(x, y):
	return x - floor(x/y) * y

var _dir = 0
var _ignore_input = false
func _process(delta):
	if _ignore_input:
		return

	if Input.is_action_just_pressed("ui_right"):
		_dir = 0
	elif Input.is_action_just_pressed("ui_left"):
		_dir = 1

	# if Input.is_action_just_pressed("ui_up"):
	# 	new_lock()
	if Input.is_action_just_pressed("ui_down"):
		var dif = abs(target_rot - wrapi($Anims/KeyHole/PaperClip.global_rotation_degrees as int, 0, 360))

		$Countdown/negparticle.restart()

		if dif > 180:
			dif = 360 - dif

		if dif <= 20:
			_ignore_input = true
			$Anims.play("Success")
			Music.play("Sounds/Select.wav")
		elif dif <= 40:
			_ignore_input = true
			$Anims.play("LetterJiggle3")
			Music.play("Sounds/NoPick.wav")
		elif dif <= 90:
			_ignore_input = true
			$Anims.play("LetterJiggle2")
			Music.play("Sounds/NoPick.wav")
		else:
			_ignore_input = true
			$Anims.play("LetterJiggle")
			Music.play("Sounds/NoPick.wav")
	elif Input.is_action_pressed("ui_right") && _dir == 0:
		$Anims/KeyHole/PaperClip.rotate(deg2rad(ROTATE_SPEED * delta))
	elif Input.is_action_pressed("ui_left") && _dir == 1:
		$Anims/KeyHole/PaperClip.rotate(deg2rad(-ROTATE_SPEED * delta))

func _on_animation_finished(anim_name: String):
	if anim_name == "Success":
		emit_signal("success")
		$Anims.play("Hidden")
	else:
		_ignore_input = false
		$Timer.set_paused(false)


func _on_animation_started(anim_name:String):
	if anim_name == "Hidden":
		$Timer.set_paused(true)
		_ignore_input = true
		Music.fadestop("Music/LockPick.ogg")
	elif anim_name == "Start":
		Music.play("Music/LockPick.ogg")


func _on_Timer_timeout():
	new_lock(true)

func _on_update_interval_timeout():
	$Countdown.text = "Lock Reset: %.1fs" % $Timer.time_left
