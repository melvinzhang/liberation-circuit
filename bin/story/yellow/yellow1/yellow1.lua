local C = require("game")

C.set_region_in_area_index(0)

sources = {"story/yellow/yellow1/y1_base.c", "story/yellow/yellow1/y1_m_builder.c", "story/yellow/yellow1/y1_harvest.c",
           "story/yellow/yellow1/y1_leader1.c", "story/yellow/yellow1/y1_leader2.c", "story/yellow/yellow1/y1_follower.c",
           "story/yellow/yellow1/y1_minbase.c", "story/yellow/yellow1/y1_scout.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_8 = 1024

centre_block = C.get_map_size_blocks() / 2

player_base_x = 25
player_base_y = 25

C.mission_add_data_well(0, 1, player_base_x, player_base_y)
C.set_player_spawn_position_by_latest_well(0, ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(1, 1, player_base_x + 20, player_base_y + 5)
C.mission_add_data_well(1, 1, player_base_x + 5, player_base_y + 20)

C.mission_add_data_well(2, 1, centre_block + 15, centre_block - 15)
C.mission_add_data_well(2, -1, centre_block - 15, centre_block + 15)

C.mission_add_data_well(1, 1, centre_block + 15, centre_block - 45)
C.mission_add_data_well(1, -1, centre_block - 15, centre_block + 45)

C.mission_add_data_well(1, -1, centre_block + 45, centre_block - 32)
C.mission_add_data_well(1, 1, centre_block - 45, centre_block + 32)

C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 25, C.get_map_size_blocks() - 25)
C.set_player_spawn_position_by_latest_well(1, -ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 30, C.get_map_size_blocks() - 45)
C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 45, C.get_map_size_blocks() - 30)

C.set_starting_data_setting(1, 1)
