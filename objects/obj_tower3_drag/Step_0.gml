if (mouse_check_button_pressed(mb_left)) {
    is_dragging = true;
}

// Update the preview position while dragging
if (is_dragging) {
    preview_x = mouse_x;
    preview_y = mouse_y;
}

// Check if the mouse is released to place the tower
if (mouse_check_button_released(mb_left) && is_dragging) {
    is_dragging = true;
    
    // Check if the position is valid (implement your own validation logic)
   
        // Create the actual tower at the position
        instance_create_layer(preview_x, preview_y, "Instances", obj_tower3);
    
    
    // Destroy the preview object
    instance_destroy();
}