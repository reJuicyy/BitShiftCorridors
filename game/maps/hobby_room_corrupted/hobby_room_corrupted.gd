tool
extends RPGH_Map

var talked_to_bats_or_junk = Storable("TalkedToBatsOrJunk", false)
var talked_to_counter = Storable("TalkedToCounter", 0)


func handle_talked_to_counter():
	talked_to_counter.value += 1
	if talked_to_counter.value == 4:
		$QwennEnters.append()
