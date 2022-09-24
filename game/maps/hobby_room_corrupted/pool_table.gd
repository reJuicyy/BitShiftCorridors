extends RPGH_Event


func default():
	textbox("PoolTable_1")
	if is_first_run():
		textbox("PoolTable_2", DataBase.AKO_01)
		textbox("PoolTable_3", DataBase.AKO_01)
		map.handle_talked_to_counter()
	yield(RPGH.Dialog, "finished_textbox_queue")
