/// @description Insert description here
// You can write your code in this editor
if (obj_GameManager.IsGamePaused = true) {

} else {

var range = 1500; //Shooting range

var target = noone;
var min_distance = range;

var nearest_enemy = instance_nearest(x,y,obj_CarTire); //indsæt fjender i parentes
if (nearest_enemy != noone) {

	var distance_to_enemy = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);
	if (check_interval <= 0)
	{
		if (distance_to_enemy < min_distance )
		{
		
	        target = nearest_enemy;
			var new_projectile = instance_create_layer(x, y,"Instances" ,obj_projectile3);
	        new_projectile.target = target;
			check_interval = interval_time;
		}
	}	
	check_interval -= 1;
		
	}

}

