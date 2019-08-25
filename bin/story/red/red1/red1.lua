local C = require("game")

C.set_region_in_area_index(0)

sources = {"story/red/red1/r1_base.c", "story/red/red1/r1_m_builder.c", "story/red/red1/r1_leader1.c",
           "story/red/red1/r1_follower.c", "story/red/red1/r1_minbase.c", "story/red/red1/r1_scout.c",
           "story/red/red1/r1_follower2.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_1 = 8192

centre_block = C.get_map_size_blocks() / 2

ring_centre_x = centre_block - 10
ring_centre_y = 42

C.mission_add_data_well(0, -1, ring_centre_x, ring_centre_y)

C.set_player_spawn_position_by_latest_well(1, 1024, DEFAULT_DISTANCE_FROM_WELL)

base_angle = 450

C.mission_add_red_data_well_ring(1, ring_centre_x, ring_centre_y, 16, 6, base_angle + ANGLE_1 / 12)
C.mission_add_red_data_well_ring(1, ring_centre_x, ring_centre_y, 44, 10, base_angle + ANGLE_1 / 20)
C.mission_add_red_data_well_ring(1, ring_centre_x, ring_centre_y, 58, 10, base_angle)

C.set_player_spawn_position_by_specified_well(0, 16, -1024, DEFAULT_DISTANCE_FROM_WELL)

C.set_starting_data_setting(1, 12)
