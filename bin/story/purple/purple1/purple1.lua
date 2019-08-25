local C = require("game")

C.set_region_in_area_index(0)


sources = {"story/purple/purple1/p1_base.c", "story/purple/purple1/p1_m_builder.c", "story/purple/purple1/p1_harvest.c",
           "story/purple/purple1/p1_minbase.c", "story/purple/purple1/p1_leader1.c", "story/purple/purple1/p1_leader2.c",
           "story/purple/purple1/p1_escort.c", "story/purple/purple1/p1_picket.c", "story/purple/purple1/p1_defence.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

centre_block = C.get_map_size_blocks() / 2

C.set_starting_data_setting(1, 11)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096

MP1_SHORT = 12
MP1_LONG = 25

C.mission_add_data_well(0, 1, 15, centre_block)
C.set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(1, 1, 15 + MP1_SHORT, centre_block - MP1_LONG)
C.mission_add_data_well(1, 1, 15 + MP1_LONG, centre_block + MP1_SHORT)

C.mission_add_data_well(0, 1, centre_block, 15)
C.mission_add_data_well(1, 1, centre_block - MP1_SHORT, 15 + MP1_LONG)
C.mission_add_data_well(1, 1, centre_block + MP1_LONG, 15 + MP1_SHORT)

C.mission_add_data_well(0, 1, centre_block, C.get_map_size_blocks() - 15)
C.mission_add_data_well(1, 1, centre_block - MP1_LONG, C.get_map_size_blocks() - 15 - MP1_SHORT)
C.mission_add_data_well(1, 1, centre_block + MP1_SHORT, C.get_map_size_blocks() - 15 - MP1_LONG)

C.mission_add_data_well(0, 1, C.get_map_size_blocks() - 15, centre_block)
C.set_player_spawn_position_by_latest_well(1, ANGLE_2, 700)

C.mission_add_data_well(1, 1, C.get_map_size_blocks() - 15 - MP1_LONG, centre_block - MP1_SHORT)
C.mission_add_data_well(1, 1, C.get_map_size_blocks() - 15 - MP1_SHORT, centre_block + MP1_LONG)

C.add_mdetail_worm_source_to_all_wells()
