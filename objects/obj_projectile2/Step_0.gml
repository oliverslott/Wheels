/// @description Insert description here
// You can write your code in this editor
if (instance_exists(target)) {
	direction = point_direction(x,y,target.x,target.y);
	
	if (point_distance(x, y, target.x, target.y) < 10) {
        with (target) {
            Health -= 20;
		}
		instance_destroy();
	 }
} else {
	instance_destroy();
}