var tower_cost = 30;

		
if (global.Coins >= tower_cost) {
	global.Coins -= tower_cost;
    // Create a tower preview object at the mouse position
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower3_drag);
} else {
	show_message("Not enough coins!");
}
