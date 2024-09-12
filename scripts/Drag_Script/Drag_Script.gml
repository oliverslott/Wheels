// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Drag_Script(_preview_obj) {
    // Check if the left mouse button is pressed
    if (mouse_check_button_pressed(mb_left)) {
        is_dragging = true; // Set dragging state
    }

    // Update the position of the instance while dragging
    if (is_dragging) {
        x = mouse_x;
        y = mouse_y;
    }

    // Check if the left mouse button is released
    if (mouse_check_button_released(mb_left) && is_dragging) {
        is_dragging = false;  // Stop dragging

        // Create the actual object at the new position
        instance_create_layer(x, y, "Instances", _preview_obj);

        // Destroy the preview instance (if needed)
        instance_destroy(self);
    }
}

