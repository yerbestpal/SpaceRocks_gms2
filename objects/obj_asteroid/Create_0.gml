/// @description Behaviour on create

// Randomise sprite
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_med,
	spr_asteroid_huge
);

// Randomise direction and sprite angle
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;