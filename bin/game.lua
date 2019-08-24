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

return ffi.C
