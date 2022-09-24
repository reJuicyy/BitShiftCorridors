extends RPGH_Event


func default():
	textbox("Vase_1")
	yield(RPGH.Dialog, "finished_textbox_queue")
