var tower_cost = 50;

if (mouse_x >= x && mouse_x <= x + sprite_width &&
    mouse_y >= y && mouse_y <= y + sprite_height) {
		
    if (global.coins >= tower_cost) {
		global.coins -= tower_cost;
    // Create a tower preview object at the mouse position
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower1_drag);
} else {
	show_message("Not enough coins!");
}

	}