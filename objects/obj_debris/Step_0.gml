/// @description Behaviour that can occurs on each frame

// Fade sprite to transparent
image_alpha -= 0.01;
if (image_alpha <= 0) {
	instance_destroy();
}