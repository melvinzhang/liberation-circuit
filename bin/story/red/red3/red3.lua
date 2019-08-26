local C = require("game")

C.set_region_in_area_index(2)

sources = {"story/red/red3/r3_base.c", "story/red/red3/r3_m_builder.c", "story/red/red3/r3_harvest.c",
           "story/red/red3/r3_minbase.c", "story/red/red3/r3_leader1.c", "story/red/red3/r3_leader2.c",
           "story/red/red3/r3_escort.c", "story/red/red3/r3_picket.c", "story/red/red3/r3_defence.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

C.set_starting_data_setting(1, 20)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_1 = 8192

centre_block = C.get_map_size_blocks() / 2

ring_centre_x = centre_block
ring_centre_y = centre_block

C.mission_add_data_well(0, -1, ring_centre_x, ring_centre_y)

C.set_player_spawn_position_by_latest_well(1, 1024, DEFAULT_DISTANCE_FROM_WELL)


base_angle = 450

C.mission_add_red_data_well_ring(0, ring_centre_x, ring_centre_y, 16, 6, base_angle + ANGLE_1 / 12)
C.mission_add_red_data_well_ring(1, ring_centre_x, ring_centre_y, 30, 6, base_angle)
C.mission_add_red_data_well_ring(1, ring_centre_x, ring_centre_y, 46, 6, base_angle + ANGLE_1 / 12)

C.set_player_spawn_position_by_specified_well(0, 13, -1024, DEFAULT_DISTANCE_FROM_WELL)