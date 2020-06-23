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

move_wrap(true, true, sprite_width / 2);