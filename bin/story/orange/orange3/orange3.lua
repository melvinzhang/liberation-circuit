local C = require("game")

C.set_region_in_area_index(2)

sources = {"story/orange/orange3/o3_base.c", "story/orange/orange3/o3_defend.c", "story/orange/orange3/o3_harvest.c",
           "story/orange/orange3/o3_harvest2.c", "story/orange/orange3/o3_harvest3.c", "story/orange/orange3/o3_guard1.c",
           "story/orange/orange3/o3_guard2.c", "story/orange/orange3/o3_guard3.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

centre_block = C.get_map_size_blocks() / 2

dwi = 0
function inc()
    dwi = dwi + 1
end

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_8 = 1024

ORANGE_LINE_THICKNESS_1 = 90
ORANGE_LINE_THICKNESS_2 = 40

C.mission_add_data_well(0, -1, centre_block, centre_block); inc()
C.set_player_spawn_position_by_latest_well(1, ANGLE_2 + 600, DEFAULT_DISTANCE_FROM_WELL)

-- lower right branch
C.add_orange_data_well(0, 1, 900, 6900, ORANGE_LINE_THICKNESS_1); inc()
C.set_player_spawn_position_by_latest_well(0, ANGLE_2 + ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

-- right
C.add_orange_data_well(0, 2, -400, 4000, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_1A = dwi - 1
C.add_orange_data_well(sub_centre_well_1A, 3, 800, 2900, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_1A, 3, -900, 2300, ORANGE_LINE_THICKNESS_2); inc()

-- top
C.add_orange_data_well(0, 2, -1500, 3500, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_2 = dwi - 1
C.add_orange_data_well(sub_centre_well_2, 3, -850, 3000, ORANGE_LINE_THICKNESS_2); inc()

    -- upper left
C.add_orange_data_well(0, 2, 5500, 3300, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_2A = dwi - 1
C.add_orange_data_well(sub_centre_well_2A, 2, -1200, 3200, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_2A, 2, 4900, 3300, ORANGE_LINE_THICKNESS_2); inc()

-- left
C.add_orange_data_well(0, 2, 4300, 3200, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_3 = dwi - 1
C.add_orange_data_well(sub_centre_well_3, 3, 4700, 2400, ORANGE_LINE_THICKNESS_2); inc()
sub_centre_well_3A = dwi - 1
C.add_orange_data_well(sub_centre_well_3A, 3, 2400, 2800, ORANGE_LINE_THICKNESS_2); inc()

-- down left
C.add_orange_data_well(0, 2, 3200, 4100, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_4 = dwi - 1
C.add_orange_data_well(sub_centre_well_4, 3, 3500, 3000, ORANGE_LINE_THICKNESS_2); inc()

-- down
C.add_orange_data_well(0, 2, 1950, 3700, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_5 = dwi - 1
C.add_orange_data_well(sub_centre_well_5, 3, 900, 3200, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_5, 3, 3100, 3700, ORANGE_LINE_THICKNESS_2); inc()

C.set_starting_data_setting(1, 9)
