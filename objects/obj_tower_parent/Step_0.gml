/// @description Insert description here
// You can write your code in this editor
var range = 150 //Shooting range

var target = noone;
var min_distance = range;

with () { //indsæt fjender i parentes
	var distance_to_enemy = point_distance(x, y, obj_tower.x, obj_tower.y);
	
	if (distance_to_enemy < min_distance) {
        target = id;
        min_distance = distance_to_enemy; //targeter den nærmeste fjende
	}
}

if (target != noone) {
    if (alarm[0] <= 0) { 
        instance_create_layer(x, y, "Bullets", obj_projectile_parent);
        obj_projectile_parent.target = target;
        alarm[0] = 30; //skyder på fjende hver sekundt i 30 fps spil
		
    }
alarm[0] = -1; // Reset the cooldown when it's up
}