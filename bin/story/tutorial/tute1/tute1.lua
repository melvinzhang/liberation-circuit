local ffi = require("ffi")

ffi.cdef[[
int get_map_size_blocks();
void set_region_in_area_index(int idx);
int mission_add_data_well(int data_well_type, float spin_sign, int x, int y);
void set_player_spawn_position_by_latest_well(int player_index, int angle_from_well, int distance_from_well);
void set_player_spawn_position(int player_index, int block_x, int block_y, int angle);
void load_mission_source(const char* filename, int player_index, int template_index);
void clear_remaining_templates(int player_index, int first_template);
void add_extra_spawn(int player_index, int template_index, int spawn_x_block, int spawn_y_block, int spawn_angle);
]]

local C = ffi.C

DEFAULT_DISTANCE_FROM_WELL = 512

C.set_region_in_area_index(0)
player_base_x = 15
player_base_y = C.get_map_size_blocks() / 2
C.mission_add_data_well(0, 1, player_base_x - 4, player_base_y)

C.set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL)
C.mission_add_data_well(1, -1, player_base_x + 13, player_base_y - 15)
C.mission_add_data_well(1, -1, player_base_x + 13, player_base_y + 15)

C.load_mission_source("story/tutorial/tute1/defend1.c", 1, 0)
C.load_mission_source("story/tutorial/tute1/circle1.c", 1, 1)
C.clear_remaining_templates(1, 2)

enemy_base_x = C.get_map_size_blocks() - 15
enemy_base_y = C.get_map_size_blocks() / 2

C.set_player_spawn_position(1, enemy_base_x, enemy_base_y, 0);

C.add_extra_spawn(1, 1, enemy_base_x - 4, enemy_base_y, -2048);
C.add_extra_spawn(1, 1, enemy_base_x, enemy_base_y - 4, 0);
