extends AudioStreamPlayer

func _ready():
	self.volume_db += Settings.setting.audio_volume_shift
