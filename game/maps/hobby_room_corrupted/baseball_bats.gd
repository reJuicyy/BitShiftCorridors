extends RPGH_Event


func default():
	textbox("BaseBallBats_1")
	if is_first_run():
		textbox("BaseBallBats_2")
		textbox("BaseBallBats_3", DataBase.AKO_01)
		if map.talked_to_bats_or_junk.value:
			textbox("BaseBallBats_4", DataBase.AKO_01)
			screen_text("BaseBallBats_Junk_1")
			screen_text("BaseBallBats_5")
			screen_text("BaseBallBats_6")
		else:
			map.talked_to_bats_or_junk.value = true
		map.handle_talked_to_counter()
	yield(RPGH.Dialog, "finished_textbox_queue")
