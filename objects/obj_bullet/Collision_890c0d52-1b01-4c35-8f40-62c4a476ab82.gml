/// @description Behaviour that occurs when bullet collides with asteroids

instance_destroy();

// The bullet does not call this; the other instance in the 
// colission does i.e. the asteroid
with(other) {
	instance_destroy();
	
	// Divide asteroids depending on small/med/huge sprite,
	// before eventually destroying them altogether
	if (sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_asteroid_med;
		}
	}
	else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	// Create debris
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}