menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons -1;
if (menu_index > buttons - 1) menu_index = 0;

if menu_index != last_choosed audio_play_sound(snd_select,1,false);

last_choosed = menu_index;

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))){
	audio_play_sound(snd_choose,1,false);
	switch menu_index{
		case 0: 
		room_goto(r_one);
		break;
		
		case 1:{
			if (room = r_start) game_end();
			else if (room = r_one) room_goto(r_start);
			break;
		}
	}
}