if (target != noone) {
	direction = point_direction(x,y,target.x,target.y);
	
	if (point_distance(x, y, target.x, target.y) < 10) {
        with (target) {
            Health -= 10;
		}
		instance_destroy();
	 }
}