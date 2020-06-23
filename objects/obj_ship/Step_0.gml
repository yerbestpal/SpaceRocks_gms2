/// @description Controls events that can occur on each frame
//Code added here will run 60 times per second

if (keyboard_check(vk_left)) {
	image_angle += 5;
}
if (keyboard_check(vk_right)) {
	image_angle -= 5;
}