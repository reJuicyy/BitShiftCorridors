extends RPGH_Event

func default():
	var cam_setup = CameraSetup()
	cam_setup.observee = $Sprite/CameraFocus
	cam_setup.zoom = 0.33333
	
	var cam_setup2 = CameraSetup()
	cam_setup2.limit_left = 0
	cam_setup2.limit_top = 0
	cam_setup2.limit_right = 336
	cam_setup2.limit_bottom = 312
	
	set_camera_setup(cam_setup)
	fade_over_camera_setup(cam_setup2, 40.9, true)
	
	yield(get_tree().create_timer(3.0), "timeout")
	var anim = $Sprite/AnimationPlayer
	anim.play("WakeUpShakeHead")
	yield(anim, "animation_finished")
	screen_text("StandUp_1")
	textbox("StandUp_2", DataBase.AKO_02)
	textbox("StandUp_3", DataBase.AKO_03)
	textbox("StandUp_4", DataBase.AKO_04)
	yield(RPGH.Dialog, "finished_textbox_queue")
	anim.play("StandUp")

func spawn_player():
	RPGH.Player.spawn($Sprite.position)
	queue_free()
