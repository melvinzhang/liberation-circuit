local C = require("game")

C.set_region_in_area_index(0)

sources = {"story/green/green1/g1_base.c", "story/green/green1/g1_firebase.c", "story/green/green1/g1_builder.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources);

centre_block = C.get_map_size_blocks() / 2

DEFAULT_DISTANCE_FROM_WELL = 512
GREEN_1_DIST_SHORT = 12
GREEN_1_DIST_MED = 14
GREEN_1_DIST_LONG = 28
GREEN_1_DIST_LONGEST = 36

C.mission_add_data_well(2, -1, centre_block - GREEN_1_DIST_SHORT, centre_block - GREEN_1_DIST_SHORT)
C.mission_add_data_well(1, -1, centre_block - GREEN_1_DIST_LONG, centre_block - GREEN_1_DIST_MED)
C.mission_add_data_well(1, -1, centre_block - GREEN_1_DIST_MED, centre_block - GREEN_1_DIST_LONG)
C.mission_add_data_well(0, -1, centre_block - GREEN_1_DIST_LONGEST, centre_block - GREEN_1_DIST_LONGEST)

C.set_player_spawn_position_by_latest_well(1, 1000, DEFAULT_DISTANCE_FROM_WELL)

C.add_line_between_data_wells(0, 1, 90);
C.add_line_between_data_wells(1, 3, 90);
C.add_line_between_data_wells(3, 2, 90);
C.add_line_between_data_wells(2, 0, 90);

C.mission_add_data_well(2, -1, centre_block + GREEN_1_DIST_SHORT, centre_block + GREEN_1_DIST_SHORT)
C.mission_add_data_well(1, -1, centre_block + GREEN_1_DIST_LONG, centre_block + GREEN_1_DIST_MED)
C.set_player_spawn_position_by_latest_well(0, 5000, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(1, -1, centre_block + GREEN_1_DIST_MED, centre_block + GREEN_1_DIST_LONG)
C.mission_add_data_well(0, -1, centre_block + GREEN_1_DIST_LONGEST, centre_block + GREEN_1_DIST_LONGEST)

C.add_line_between_data_wells(4, 5, 90);
C.add_line_between_data_wells(5, 7, 90);
C.add_line_between_data_wells(7, 6, 90);
C.add_line_between_data_wells(6, 4, 90);

C.mission_add_data_well(2, -1, centre_block + GREEN_1_DIST_SHORT, centre_block - GREEN_1_DIST_SHORT)
C.mission_add_data_well(1, -1, centre_block + GREEN_1_DIST_LONG, centre_block - GREEN_1_DIST_MED)
C.mission_add_data_well(1, -1, centre_block + GREEN_1_DIST_MED, centre_block - GREEN_1_DIST_LONG)
C.mission_add_data_well(0, -1, centre_block + GREEN_1_DIST_LONGEST, centre_block - GREEN_1_DIST_LONGEST)

C.add_line_between_data_wells(8, 9, 90);
C.add_line_between_data_wells(9, 11, 90);
C.add_line_between_data_wells(11, 10, 90);
C.add_line_between_data_wells(10, 8, 90);

C.mission_add_data_well(2, -1, centre_block - GREEN_1_DIST_SHORT, centre_block + GREEN_1_DIST_SHORT)
C.mission_add_data_well(1, -1, centre_block - GREEN_1_DIST_LONG, centre_block + GREEN_1_DIST_MED)
C.mission_add_data_well(1, -1, centre_block - GREEN_1_DIST_MED, centre_block + GREEN_1_DIST_LONG)
C.mission_add_data_well(0, -1, centre_block - GREEN_1_DIST_LONGEST, centre_block + GREEN_1_DIST_LONGEST)

C.add_line_between_data_wells(12, 13, 90);
C.add_line_between_data_wells(13, 15, 90);
C.add_line_between_data_wells(15, 14, 90);
C.add_line_between_data_wells(14, 12, 90);

C.set_starting_data_setting(1, 3);
