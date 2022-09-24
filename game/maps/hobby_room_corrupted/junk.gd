extends RPGH_Event


func default():
	textbox("Junk_1")
	if is_first_run():
		textbox("Junk_2", DataBase.AKO_01)
		textbox("Junk_3", DataBase.AKO_02)
		if map.talked_to_bats_or_junk.value:
			textbox("Junk_4", DataBase.AKO_01)
			screen_text("BaseBallBats_Junk_1")
			screen_text("Junk_5")
			screen_text("Junk_6")
			screen_text("Junk_7")
		else:
			map.talked_to_bats_or_junk.value = true
		map.handle_talked_to_counter()
	yield(RPGH.Dialog, "finished_textbox_queue")
