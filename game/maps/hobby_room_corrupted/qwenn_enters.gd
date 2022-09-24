extends RPGH_Event


func default():
	screen_text("QwennEnters_1")
	screen_text("QwennEnters_2")
	yield(RPGH.Dialog, "finished_textbox_queue")
	$Qwenn.visible = true
	yield(get_tree().create_timer(1.5), "timeout")
	RPGH.get_node("UI/Insertion/AnimationPlayer").play("FadeInInsertion")
	yield(RPGH.get_node("UI/Insertion/AnimationPlayer"), "animation_finished")
	textbox("QwennEnters_3", DataBase.AKO_04)
	textbox("QwennEnters_4", null, DataBase.QWENN_01)
	textbox("QwennEnters_5", DataBase.AKO_01)
	textbox("QwennEnters_6", null, DataBase.QWENN_02)
	yield(RPGH.Dialog, "finished_textbox_queue")
