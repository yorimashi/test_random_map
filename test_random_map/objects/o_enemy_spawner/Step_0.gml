enemy_spawn_counter++;
if enemy_spawn_counter >= 1*room_speed && enemy_spawn == true{
		//Enemy
		repeat(o_data_save.death + 1){
			randomize();
			random_counter++;
			if (random_counter >= 1){
				enemy_x = random_range((o_room.delete_blocks -1)*wall_size,room_width - o_room.delete_blocks*wall_size);
				enemy_y = choose(0,room_width - (o_room.delete_blocks - 2)*wall_size);
				instance_create_layer(enemy_x,enemy_y,"Enemy",o_enemy);
				random_counter = 0;
			}
		}
		enemy_spawn = false;
}
