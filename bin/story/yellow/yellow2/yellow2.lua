local C = require("game")

C.set_region_in_area_index(1)

sources = {"story/yellow/yellow2/y2_base.c", "story/yellow/yellow2/y2_m_builder.c", "story/yellow/yellow2/y2_harvest.c",
           "story/yellow/yellow2/y2_leader1.c", "story/yellow/yellow2/y2_leader2.c", "story/yellow/yellow2/y2_follower.c",
           "story/yellow/yellow2/y2_minbase.c", "story/yellow/yellow2/y2_scout.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_8 = 1024

centre_block = C.get_map_size_blocks() / 2

C.set_starting_data_setting(1, 3)

player_base_x = 25
player_base_y = 25

C.mission_add_data_well(0, 1, player_base_x, player_base_y)
C.set_player_spawn_position_by_latest_well(0, ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(1, 1, player_base_x + 30, player_base_y + 3)
C.mission_add_data_well(1, 1, player_base_x + 3, player_base_y + 30)

C.mission_add_data_well(0, -1, centre_block, centre_block)

C.mission_add_data_well(1, 1, centre_block + 25, centre_block - 42)
C.mission_add_data_well(1, -1, centre_block - 25, centre_block + 42)

C.mission_add_data_well(1, -1, centre_block + 43, centre_block - 29)
C.mission_add_data_well(1, 1, centre_block - 43, centre_block + 29)

C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 20, C.get_map_size_blocks() - 20)
C.set_player_spawn_position_by_latest_well(1, -ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 35, C.get_map_size_blocks() - 59)
C.add_extra_spawn(1, 6, C.get_map_size_blocks() - 30, C.get_map_size_blocks() - 59, 4096)
C.mission_add_data_well(0, -1, C.get_map_size_blocks() - 59, C.get_map_size_blocks() - 35)
C.add_extra_spawn(1, 6, C.get_map_size_blocks() - 59, C.get_map_size_blocks() - 30, -2048)

C.mission_add_data_well(1, -1, C.get_map_size_blocks() - 16, C.get_map_size_blocks() - 43)
C.mission_add_data_well(1, -1, C.get_map_size_blocks() - 43, C.get_map_size_blocks() - 16)
