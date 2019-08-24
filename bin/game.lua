local ffi = require("ffi")

ffi.cdef[[
int get_map_size_blocks();
void set_region_in_area_index(int idx);
int mission_add_data_well(int data_well_type, float spin_sign, int x, int y);
int mission_add_data_well_to_ring(int data_well_type, float spin_sign, int md_index, int angle);

void set_player_spawn_position_by_latest_well(int player_index, int angle_from_well, int distance_from_well);
void set_player_spawn_position(int player_index, int block_x, int block_y, int angle);
void set_player_spawn_position_by_specified_well(int player_index, int well_index, int angle_from_well, int distance_from_well);

void load_mission_source(const char* filename, int player_index, int template_index);
void clear_remaining_templates(int player_index, int first_template);
void add_extra_spawn(int player_index, int template_index, int spawn_x_block, int spawn_y_block, int spawn_angle);

int add_mdetail_ring(int centre_x, int centre_y, int ring_size, int empty_centre);
int add_mdetail_line(int start_x, int start_y, int end_x, int end_y, int line_thickness);
int add_mdetail_system(int centre_x, int centre_y, int system_size);
int add_mdetail_worm_source(int centre_x, int centre_y, int worms);
]]

return ffi.C
