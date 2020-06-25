/// @description Behaviour that can occurs on each frame
//Code added here will run 60 times per second

// Rotation
if (keyboard_check(vk_left)) {
	image_angle += 5;
}
if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

// Movement
if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05);
}

// Shoot bullets
if (keyboard_check_pressed(vk_space)) {
	var bulletInstance = instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_zap, 1, false);
	bulletInstance.direction = image_angle;
}

move_wrap(true, true, sprite_width / 2);