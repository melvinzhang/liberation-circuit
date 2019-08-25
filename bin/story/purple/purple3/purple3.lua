local C = require("game")

C.set_region_in_area_index(2)

sources = {"story/purple/purple3/p3_base.c", "story/purple/purple3/p3_m_builder.c", "story/purple/purple3/p3_harvest.c",
           "story/purple/purple3/p3_minbase.c", "story/purple/purple3/p3_leader1.c", "story/purple/purple3/p3_leader2.c",
           "story/purple/purple3/p3_escort.c", "story/purple/purple3/p3_picket.c", "story/purple/purple3/p3_picket2.c",
           "story/purple/purple3/p3_defence.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

C.set_starting_data_setting(1, 12)

centre_block = C.get_map_size_blocks() / 2

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
P3_CIRCLE_RADIUS = 43

C.mission_add_data_well_to_circle(0, ANGLE_2, P3_CIRCLE_RADIUS, 1, centre_block + 4, centre_block)
C.set_player_spawn_position_by_latest_well(0, 0, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well_to_circle(0, 0, P3_CIRCLE_RADIUS, -1, centre_block + 4, centre_block)

C.mission_add_data_well_to_circle(1, ANGLE_2 - 900, P3_CIRCLE_RADIUS, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 + 900, P3_CIRCLE_RADIUS, 1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 - 1900, P3_CIRCLE_RADIUS, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 + 1900, P3_CIRCLE_RADIUS, 1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 - 2900, P3_CIRCLE_RADIUS, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, ANGLE_2 + 2900, P3_CIRCLE_RADIUS, 1, centre_block + 3, centre_block)

C.mission_add_data_well_to_circle(0, 600, P3_CIRCLE_RADIUS - 12, 1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(0, -600, P3_CIRCLE_RADIUS - 12, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, 1800, P3_CIRCLE_RADIUS - 11, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, -1800, P3_CIRCLE_RADIUS - 11, 1, centre_block + 3, centre_block)

C.mission_add_data_well_to_circle(1, 1500, P3_CIRCLE_RADIUS - 31, -1, centre_block + 3, centre_block)
C.mission_add_data_well_to_circle(1, -1500, P3_CIRCLE_RADIUS - 31, 1, centre_block + 3, centre_block)

C.mission_add_data_well_to_circle(0, 0, P3_CIRCLE_RADIUS - 26, -1, centre_block + 3, centre_block)
C.set_player_spawn_position_by_latest_well(1, ANGLE_2, 700)

C.add_mdetail_worm_source_to_all_wells()
