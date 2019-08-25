local C = require("game")

C.set_region_in_area_index(2)

sources = {"story/yellow/yellow3/y3_base.c", "story/yellow/yellow3/y3_m_builder.c", "story/yellow/yellow3/y3_harvest.c",
           "story/yellow/yellow3/y3_leader1.c", "story/yellow/yellow3/y3_leader2.c", "story/yellow/yellow3/y3_follower.c",
           "story/yellow/yellow3/y3_minbase.c", "story/yellow/yellow3/y3_scout.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

C.set_starting_data_setting(1, 4)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_8 = 1024

player_base_x = 35
player_base_y = 35

C.mission_add_data_well(0, 1, player_base_x, player_base_y)
C.set_player_spawn_position_by_latest_well(0, ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(1, 1, player_base_x - 21, player_base_y + 3)
C.mission_add_data_well(1, 1, player_base_x + 3, player_base_y - 21)

main_block = 70

C.mission_add_data_well(1, -1, main_block, main_block)

C.mission_add_data_well(1, 1, main_block - 17, main_block - 17)
C.mission_add_data_well(1, 1, main_block + 17, main_block - 17)

C.mission_add_data_well(1, 1, main_block - 17, main_block + 17)
C.mission_add_data_well(0, 1, main_block + 17, main_block + 17)
C.set_player_spawn_position_by_latest_well(1, ANGLE_2 + ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(0, 1, main_block + 32, main_block + 32)
C.add_extra_spawn(1, 6, main_block + 36, main_block + 36, 4096 + 1024)
C.add_extra_spawn(1, 6, main_block + 4, main_block + 4, 4096 + 1024)

C.mission_add_data_well(1, -1, main_block + 38, main_block)
C.mission_add_data_well(1, -1, main_block - 38, main_block)
C.mission_add_data_well(1, -1, main_block, main_block + 38)
C.mission_add_data_well(1, -1, main_block, main_block - 38)

C.mission_add_data_well(2, 1, main_block - 40, main_block + 33)
C.mission_add_data_well(2, 1, main_block + 33, main_block - 40)
