// Check if the mouse is within the button bounds
if (mouse_x >= x && mouse_x <= x + sprite_width &&
    mouse_y >= y && mouse_y <= y + sprite_height) {
    
    // Create a tower preview object at the mouse position
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower_drag);
}
