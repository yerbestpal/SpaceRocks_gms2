/// @description Behaviour that occurs when ship collides with asteroids

lives -= 1;

instance_destroy();

// Create debris when ship is destroyed by asteroid
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}