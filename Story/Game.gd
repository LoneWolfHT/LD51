extends Node2D

#idea: Turn ... into a 'reveal next text'
var story = [
"Dummy text so that page 1 isn't page 0 internally. I hope you're not playing the game right now",

#1 alienstory
"""It is [b][wave amp=6 freq=4]Halloween[/wave][/b], and you are at your house handing out candy to trick or treaters, the majority of which are dressed up as ghosts.
During a break you joke to yourself about how their bags get bigger every year. Looking at the clock you realize it's almost 10pm, and you should probably think about getting to bed.
You hear small footsteps on the doorstep right as you're locking the door. You:

[color=#ffa700][b][url={"page": 2}]Treat one last kiddo[/url][/b][/color]

[color=#ffa700][b][url={"page": 23}]Ignore them and go to bed[/url][/b][/color]
""",

#2
"""You open the door, and business commences. AKA they bluff for a treat with the threat of a trick while you:

[color=#ffa700][b][url={"page": 3}]play gullible and give them the treat[/url][/b][/color]

[color=#ffa700][b][url={"page": 4}]play the shrewd businessman, and call their bluff[/url][/b][/color]
""",

#3
"""You go to drop some candy in their bag, but you aim is bad and a few fall onto the ground.
The ghost quickly drops down to pick it up, but in their hurry they accidentally rip their bedsheet off, revealing a very realistic [b][wave amp=4 freq=2]alien suit?[/wave][/b]
You stare in shock as they swiftly deposit the dropped candy in their bag, throw the bedsheet back on, and run off without a word.

[color=#ffa700][b][url={"page": 5}]Go to close the door[/url][/b][/color]
""",

#4
"""They slide off their bedsheet... to reveal a very realistic [b][wave amp=4 freq=2]alien suit?[/wave][/b]
You applaud their trick and drop the last of your candy into their bag.
They silently nod thanks and walk off.

[color=#ffa700][b][url={"page": 5}]Go to close the door[/url][/b][/color]
""",

#5 alienstory
"""As you go to close the door you reflect on what just happened.
That was an amazingly realistic alien suit, where did they get it? Who were they? You decide to:

[color=#ffa700][b][url={"page": 6}]Follow them[/url][/b][/color]

[color=#ffa700][b][url={"page": 23}]Shrug it off and go to bed[/url][/b][/color]
""",

#6 event?
"""You quickly slip on shoes and follow the ghost down alleys and side streets until you get to an abandoned warehouse.
A few other ghosts are going into the warehouse through a small door, your ghost joins them. You:

[color=#ffa700][b][url={"page": 8}]Wait for them to leave[/url][/b][/color]

[color=#ffa700][b][url={"page": 7}]Dash over and peek through the door[/url][/b][/color]
""",

#7
"""You leave the shadows of the alley you were in and are just about to dash for the door when it starts to open again.

[color=#ffa700][b][url={"page": 8}]Dash back to cover[/url][/b][/color]
""",

#8
"""Eventually they exit the warehouse and head back into the city, with the last one locking the door behind them.

[color=#ffa700][b][url={"page": 9}]Sneak over and attempt to pick the lock[/url][/b][/color]
""",

#9 event?
"""The lock is a basic one. You pull out a paperclip, slip a letter opener out of your pocket, and get to work.

[color=#ffa700][b][url={"page": 10, "lockpick": true}]Use your professional tools[/url][/b][/color]
""",

#10
"""The warehouse is mostly empty, with a few old crates in the corners, and an- [shake rate=5 level=10]UNIDENTIFIED FLYING[/shake] (but currently landed) [shake rate=5 level=10]OBJECT?![/shake]
Its beam is on, and covering a 5 foot diameter steel bowl directly below the UFO, you can see a few candy wrappers lying around the outside of the bowl. You:

[color=#ffa700][b][url={"page": 11}]Climb into the bowl and the light of the beam[/url][/b][/color]

[color=#ffa700][b][url={"page": 13}]Look around[/url][/b][/color]
""",

#11
"""You scramble into the bowl, for a few moments nothing happens, then in a flash of bright light [shake rate=7 level=10]you feel your body being ripped into a million pieces...[/shake] and put back together again.

[color=#ffa700][b][url={"page": 12}]Open your eyes[/url][/b][/color]
""",

#12
"""At first you can't see anything, then suddenly your senses rush back all at once.
You find yourself laying on a sea of candy, which spreads out to all sides of what you assume to be the UFO's featureless white storage area. Judging by how close the domed ceiling is it's probably quite a deep sea too.
Shifting around to avoid sinking, you attempt to find an exit...

[color=#ffa700][b][url={"page": 21}]Continue[/url][/b][/color]
""",

#13
"""You look over the spaceship in awe, and eventually walk over to the bowl to look at the candy wrappers, but you mistakenly leave your back to the door, and as you lean down to inspect the candy wrappers a human voice barks out:
\"Put your hands up and turn to face me, I'm armed!\"
You freeze, and:

[color=#ffa700][b][url={"page": 11}]Dive into the bowl and the light of the beam[/url][/b][/color]

[color=#ffa700][b][url={"page": 14}]Do as the voice says[/url][/b][/color]
""",

#14
"""You slowly turn, with your hands up, to see a man with a few military medals on their coat pointing a weird looking double barrel shotgun at you.
They shift slightly against the weight of a bulging backpack.
\"What are you doing here? Are you working with the aliens?!\" they demand.

[color=#ffa700][b][url={"page": 15}]Say [wave amp=6 freq=5]\"ExTeRmInAtE\"[/wave][/url][/b][/color]

[color=#ffa700][b][url={"page": 16}]Tell the truth[/url][/b][/color]
""",

#15
"""[center][shake rate=7 level=13]
[b]POW POW POW POW!!!![/b]
[/shake][/center]

As you are propelled into a corner by the force of the shots, you take pride in being worth more than one shotgun shell, and slip out of consciousness...

[color=#ffa700][b][url={"page": 21}]Continue[/url][/b][/color]
""",

#16
"""He lowers his gun. \"Well then, it looks like you get to witness humanity's last stand against the stealthy takeover of the planet by aliens. I have C4 in this pack, do you want to help me plant it on that spaceship?\"

[color=#ffa700][b][url={"page": 17}]Accept[/url][/b][/color]

[color=#ffa700][b][url={"page": 19}]Decline, saying you want to go home[/url][/b][/color]
""",

#17 event?
"""\"Ok, I'm Will, let's get to work. Take this C4 and plant it on the far side of the ship\"
He takes off his pack, unzips it, and grabs out a few blocks of C4, which he hands to you.
A letter gets dislodged and falls out, but he quickly grabs it and stuffs it back into the pack.
\"Take those to the ship, stick a block on every 3 feet, and come back to me when you're out\"

[color=#ffa700][b][url={"page": 18}]Do as commanded[/url][/b][/color]

[color=#ffa700][b][url={"page": 15}]Change your mind and decline, saying you want to go home[/url][/b][/color]
""",

#18
"""Once all of the C4 is placed Will grabs a remote out of his pack and motions for you to get well clear.

[color=#ffa700][b][url={"page": 20}]Get well away[/url][/b][/color]
""",

#19
"""\"Ok, that's probably for the best. It takes a lot of guts to do this. If I don't make it out alive please tell everyone who it was that saved them\"
They take their pack off, unzip it, and pull out a block of C4 as they walk towards the UFO.
A letter falls unnoticed out of the pack as they walk.

[color=#ffa700][b][url={"page": 20}]Get away[/url][/b][/color]
[color=#ffa700][b][url={"page": 20, "item": \"Will's Letter\"}]Grab the letter and get away[/url][/b][/color]
""",

#20
"""You run out of the warehouse and duck into the nearest alleyway.. only to run into 5 aliens without their ghost costumes.
They realize the game is up, so one of them steps towards you and begins their story in rough english:
[center][b][wave amp=3 freq=2]Every 10 seconds[/wave], an alien dies of candy withdrawal...[/b][/center]

[color=#ffa700][b][url={"page": 21}]Continue[/url][/b][/color]
""",

#21
"""[b][center]To Be Continued... (maybe)[/center][/b]

Thanks for playing!
If you haven't discovered it already, there's a [color=#ffa700][b]Back button[/b][/color] in the lower left of the screen, which you can use to go back and explore other realities.

[color=#ffa700][b][url={"page": 1}]Go back to the beginning[/url][/b][/color]
""",

#22
"""[b][center]Will's Letter[/center][/b]

A date on the front shows it's a year old. You pull out the sheet of paper inside and read:

------------------
Greetings, William Richards
You are hereby discharged from the military.

On the 31st day of October, you claim an alien came down to earth in a spaceship, and attempted to destroy a small town during trick-or-treating hours.
You claim to have scared it off after a 'long hard battle' (in which you caused immense and costly damage to the city) but while your helicopters were refueling the alien allegedly returned and started beaming candy out of children's hands to spite you.
You then, without authorization, deployed swarms of our robot birds in an attempt to knock it out of the sky.
Our birds are for reconnaissance only, it's no wonder the alleged alien 'got away' as you claim.
In light of the immense damage you caused to the city (and bird reserves) with a pronounced lack of any evidence to back your actions:
This decision has been made.

~POTUS
------------------
""",

#23
"""\"Goodnight ghosts, aliens, and everyone else!\" you call out to nobody in particular, and head for bed.

[fade start=1 length=10]zzzzzzzz...[/fade]

[color=#ffa700][b][url={"page": 24}]Wait, what was that?[/url][/b][/color]
""",

#24
"""You suddenly jerk awake.
Eyes wide, then immediately shut, as a flash of bright light engulfs your vision.

[shake rate=7 level=10]You feel your body being ripped into a million pieces...[/shake]

[shake rate=6 level=6]..[/shake].and put back together again.

[color=#ffa700][b][url={"page": 12}]Open your eyes[/url][/b][/color]
""",

]

signal item_change

func show_lockpick():
	$Basic.visible = false
	$LockPick.visible = true
	$LockPick.new_lock()

	Music.fadestop("Music/Reading.ogg")

func hide_lockpick():
	if $LockPick.visible:
		$Basic.visible = true
		$LockPick.visible = false
		$LockPick/Anims.queue("Hidden")

		Music.resume("Music/Reading.ogg")

func show_page(next: Dictionary):
	if next.has("page"):
		if next.page == 1:
			Settings.setting.story_path = [ next ]
			Settings.setting.items = PoolStringArray()
			emit_signal("item_change")
		elif next.page > 50:
			var temp = Settings.setting.story_path.pop_front()

			if temp.has("item"):
				var items = Settings.setting.items
				var p = items.find(temp.item)

				if p != -1:
					items.remove(p)
				Settings.setting.items = items
				emit_signal("item_change")

		if next.hash() != Settings.setting.current_page.hash(): # not going backwards
			Settings.setting.story_path.push_back(next)
			Settings.setting.current_page = next

			if next.has("lockpick") || Settings.setting.current_page.has("lockpick"):
				show_lockpick()
			else:
				hide_lockpick()

			if next.has("item"):
				var items = Settings.setting.items

				items.append(next.item as String)
				Settings.setting.items = items
				Music.play("Sounds/Pickup.wav")
				emit_signal("item_change")

		$Basic.set_text(story[next.page])

func _ready():
	show_page(Settings.setting.current_page)

	print("ready")
	Music.play("Music/Reading.ogg")

	if (self.connect("item_change", $Basic/Controls, "_item_changed") != OK):
		push_error("[Controls] Failed to connect to game")

	if (self.connect("item_change", $LockPick/Controls, "_item_changed") != OK):
		push_error("[Controls] Failed to connect to game")

func _choice_clicked(meta):
	show_page(JSON.parse(meta).result)
	Music.play("Sounds/Select.wav")

func _option_back_clicked():
	if Settings.setting.story_path.size() > 1:
		var out = Settings.setting.story_path.pop_back()

		if out.has("item"):
			var items = Settings.setting.items
			var p = items.rfind(out.item)

			if p != -1:
				items.remove(p)
			Settings.setting.items = items
			emit_signal("item_change")

		Settings.setting.current_page = Settings.setting.story_path.back()
		Music.play("Sounds/BackButton.wav")
		show_page(Settings.setting.story_path.back())

func _lockpick_success():
	hide_lockpick()
