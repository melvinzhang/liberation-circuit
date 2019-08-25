local C = require("game")

C.set_region_in_area_index(0)

sources = {"story/orange/orange1/o1_base.c", "story/orange/orange1/o1_harvest.c", "story/orange/orange1/o1_harvest.c",
           "story/orange/orange1/o1_harvest2.c", "story/orange/orange1/o1_harvest3.c", "story/orange/orange1/o1_guard1.c",
           "story/orange/orange1/o1_guard2.c", "story/orange/orange1/o1_guard3.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

centre_block = C.get_map_size_blocks() / 2

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_8 = 1024

ORANGE_LINE_THICKNESS_1 = 90
ORANGE_LINE_THICKNESS_2 = 40

dwi = 0

function inc()
    dwi = dwi + 1
end

C.mission_add_data_well(0, -1, centre_block, centre_block); inc()
C.set_player_spawn_position_by_latest_well(1, ANGLE_2 + 600, DEFAULT_DISTANCE_FROM_WELL)

-- lower right branch
C.add_orange_data_well(0, 2, 900, 5000, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_1 = dwi - 1
C.add_orange_data_well(sub_centre_well_1, 3, -700, 2800, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_1, 1, 1500, 2900, ORANGE_LINE_THICKNESS_2); inc()
C.set_player_spawn_position_by_latest_well(0, ANGLE_2 + ANGLE_8, DEFAULT_DISTANCE_FROM_WELL)

-- upper right
C.add_orange_data_well(0, 2, -500, 5000, ORANGE_LINE_THICKNESS_1); inc()

-- top
C.add_orange_data_well(0, 2, -1450, 4000, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_2 = dwi - 1
C.add_orange_data_well(sub_centre_well_2, 3, -900, 3200, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_2, 3, -3000, 3000, ORANGE_LINE_THICKNESS_2); inc()

-- upper left
C.add_orange_data_well(0, 2, 5800, 3700, ORANGE_LINE_THICKNESS_1); inc()

-- upper left
C.add_orange_data_well(0, 2, 5000, 3600, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_3 = dwi - 1
C.add_orange_data_well(sub_centre_well_3, 3, 3400, 3000, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_3, 3, -2600, 2600, ORANGE_LINE_THICKNESS_2); inc()
sub_centre_well_3A = dwi - 1
C.add_orange_data_well(sub_centre_well_3A, 3, -3200, 2000, ORANGE_LINE_THICKNESS_2); inc()

-- left
C.add_orange_data_well(0, 2, 3800, 3800, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_4 = dwi - 1
C.add_orange_data_well(sub_centre_well_4, 3, 3200, 2200, ORANGE_LINE_THICKNESS_2); inc()

-- down
C.add_orange_data_well(0, 2, 2700, 3400, ORANGE_LINE_THICKNESS_1); inc()
sub_centre_well_5 = dwi - 1
C.add_orange_data_well(sub_centre_well_5, 3, 1200, 2200, ORANGE_LINE_THICKNESS_2); inc()
sub_centre_well_6 = dwi - 1
C.add_orange_data_well(sub_centre_well_6, 3, 1200, 2200, ORANGE_LINE_THICKNESS_2); inc()
C.add_orange_data_well(sub_centre_well_6, 3, 3400, 2200, ORANGE_LINE_THICKNESS_2); inc()

C.set_starting_data_setting(1, 5)
