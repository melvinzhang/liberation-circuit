local C = require("game")

C.set_region_in_area_index(1)

sources = {"story/purple/purple2/p2_base.c", "story/purple/purple2/p2_m_builder.c", "story/purple/purple2/p2_harvest.c",
           "story/purple/purple2/p2_minbase.c", "story/purple/purple2/p2_leader1.c", "story/purple/purple2/p2_leader2.c",
           "story/purple/purple2/p2_escort.c", "story/purple/purple2/p2_picket.c", "story/purple/purple2/p2_defence.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

C.set_starting_data_setting(1, 12)

centre_block = C.get_map_size_blocks() / 2

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_4 = 2048
ANGLE_8 = 1024

P2_CIRCLE_RADIUS = 46

C.mission_add_data_well_to_circle(0, ANGLE_2, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well_to_circle(0, 0, P2_CIRCLE_RADIUS, -1, centre_block, centre_block)
C.set_player_spawn_position_by_latest_well(1, ANGLE_2, 700)

C.mission_add_data_well_to_circle(1, ANGLE_8, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(1, -ANGLE_8, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_4, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(1, -ANGLE_4, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 + ANGLE_8, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 - ANGLE_8, P2_CIRCLE_RADIUS, 1, centre_block, centre_block)

C.mission_add_data_well_to_circle(2, ANGLE_4 - 600, P2_CIRCLE_RADIUS - 14, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(2, ANGLE_4 + 600, P2_CIRCLE_RADIUS - 14, 1, centre_block, centre_block)

C.mission_add_data_well_to_circle(2, -ANGLE_4 - 600, P2_CIRCLE_RADIUS - 14, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(2, -ANGLE_4 + 600, P2_CIRCLE_RADIUS - 14, 1, centre_block, centre_block)

C.mission_add_data_well_to_circle(2, ANGLE_2 - 450, P2_CIRCLE_RADIUS - 9, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(2, ANGLE_2 + 450, P2_CIRCLE_RADIUS - 9, 1, centre_block, centre_block)

C.mission_add_data_well_to_circle(2, -450, P2_CIRCLE_RADIUS - 9, 1, centre_block, centre_block)
C.mission_add_data_well_to_circle(2, 450, P2_CIRCLE_RADIUS - 9, 1, centre_block, centre_block)

C.add_mdetail_worm_source_to_all_wells()
