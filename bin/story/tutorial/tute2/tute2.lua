local C = require("game")

DEFAULT_DISTANCE_FROM_WELL = 512

C.set_region_in_area_index(1)

player_base_x = 15
player_base_y = C.get_map_size_blocks() / 2

C.mission_add_data_well(0, 1, player_base_x - 4, player_base_y)
C.set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL)
C.mission_add_data_well(0, -1, player_base_x + 10, player_base_y - 20)
C.mission_add_data_well(0, -1, player_base_x + 10, player_base_y + 20)

C.load_mission_source("story/tutorial/tute2/defend2.c", 1, 0)
C.load_mission_source("story/tutorial/tute2/circle2.c", 1, 1)
C.clear_remaining_templates(1, 2)

enemy_base_x = C.get_map_size_blocks() - 15
enemy_base_y = C.get_map_size_blocks() / 2

C.set_player_spawn_position(1, enemy_base_x, enemy_base_y, 0)

C.add_extra_spawn(1, 1, enemy_base_x - 4, enemy_base_y, -2048)
C.add_extra_spawn(1, 1, enemy_base_x, enemy_base_y - 4, 0)
C.add_extra_spawn(1, 1, enemy_base_x + 4, enemy_base_y, 2048)
C.add_extra_spawn(1, 1, enemy_base_x, enemy_base_y + 4, 4096)
