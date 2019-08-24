local ffi = require("ffi")

ffi.cdef[[
void setup_tutorial1();
]]

local C = ffi.C

C.setup_tutorial1()

--[[
DEFAULT_DISTANCE_FROM_WELL = 512

game.region_in_area_index = 0;
player_base_x = 15;
player_base_y = w_init.map_size_blocks / 2;
mission_add_data_well(0, 1, player_base_x - 4, player_base_y);

set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL);
mission_add_data_well(1, -1, player_base_x + 13, player_base_y - 15);
mission_add_data_well(1, -1, player_base_x + 13, player_base_y + 15);

load_mission_source("story/tutorial/tute1/defend1.c", 1, 0);
load_mission_source("story/tutorial/tute1/circle1.c", 1, 1);
clear_remaining_templates(1, 2);

enemy_base_x = w_init.map_size_blocks - 15;
enemy_base_y = w_init.map_size_blocks / 2;

set_player_spawn_position(1, enemy_base_x, enemy_base_y, 0);

add_extra_spawn(1, 1, enemy_base_x - 4, enemy_base_y, -2048);
add_extra_spawn(1, 1, enemy_base_x, enemy_base_y - 4, 0);
--]]
