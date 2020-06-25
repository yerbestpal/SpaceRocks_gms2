// Drawing correct GUI overlay depending on current room
switch (room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;

	case rm_start:
	// Align text center
	draw_set_halign(fa_center);
	var c = c_yellow;
		draw_text_transformed_colour(
			room_width / 2, 100, "SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 200,
@"Score 1000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START <<
"
		);
		// Reassign text left
		draw_set_halign(left);
		break;

	case rm_win:
		// Align text center
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_colour(
			room_width / 2, 200, "YOU WON!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(room_width / 2, 300, ">> PRESS ENTER TO START <<");
		// Reassign text left
		draw_set_halign(left);
		break;

	case rm_gameover:
		// Align text center
		draw_set_halign(fa_red);
		var c = c_lime;
		draw_text_transformed_colour(
			room_width / 2, 150, "GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
		draw_text(room_width / 2, 350, "PRESS ENTER TO RESTART");
		// Reassign text left
		draw_set_halign(left);
		break;
}