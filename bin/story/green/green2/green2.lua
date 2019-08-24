local C = require("game")

C.set_region_in_area_index(1)

sources = {"story/green/green2/g4_base.c", "story/green/green2/g4_firebase.c", "story/green/green2/g4_builder.c",
           "story/green/green2/g4_spikebase.c", "story/green/green2/g4_outpost.c", "story/green/green2/g4_builder2.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources);

DEFAULT_DISTANCE_FROM_WELL = 512

GREEN_2_CENTRE_DISTANCE = 18
GREEN_2A_CENTRE_DISTANCE = 16

GREEN_2_DIST_1 = 0
GREEN_2_DIST_2 = 10
GREEN_2_DIST_3 = -3
GREEN_2_DIST_4 = 10
GREEN_2_DIST_5 = 11

centre_block_x = (C.get_map_size_blocks() / 2) - GREEN_2_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) - GREEN_2_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_2, centre_block_y + GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_1, centre_block_y + GREEN_2_DIST_2)

C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_4, centre_block_y - GREEN_2_DIST_3)
C.mission_add_data_well(0, -1, centre_block_x - GREEN_2_DIST_5, centre_block_y - GREEN_2_DIST_5)
C.set_player_spawn_position_by_latest_well(1, 1000, DEFAULT_DISTANCE_FROM_WELL)
C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_3, centre_block_y - GREEN_2_DIST_4);

C.add_line_between_data_wells(0, 1, 70);
C.add_line_between_data_wells(1, 2, 70);
C.add_line_between_data_wells(2, 3, 70);
C.add_line_between_data_wells(3, 4, 70);
C.add_line_between_data_wells(4, 0, 70);

centre_block_x = (C.get_map_size_blocks() / 2) + GREEN_2A_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) - GREEN_2A_CENTRE_DISTANCE

GREEN_2A_DIST_1 = 8
GREEN_2A_DIST_2 = 5

C.mission_add_data_well(1, -1, centre_block_x + GREEN_2A_DIST_1, centre_block_y - GREEN_2A_DIST_1)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2A_DIST_2, centre_block_y + GREEN_2A_DIST_2)
C.mission_add_data_well(0, -1, centre_block_x - GREEN_2A_DIST_1, centre_block_y + GREEN_2A_DIST_1)
C.mission_add_data_well(1, -1, centre_block_x - GREEN_2A_DIST_2, centre_block_y - GREEN_2A_DIST_2)

C.add_line_between_data_wells(5 + 0, 5 + 1, 70)
C.add_line_between_data_wells(5 + 1, 5 + 2, 70)
C.add_line_between_data_wells(5 + 2, 5 + 3, 70)
C.add_line_between_data_wells(5 + 3, 5 + 0, 70)

centre_block_x = (C.get_map_size_blocks() / 2) + GREEN_2_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) + GREEN_2_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_2, centre_block_y - GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_1, centre_block_y - GREEN_2_DIST_2)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_4, centre_block_y + GREEN_2_DIST_3)
C.set_player_spawn_position_by_latest_well(0, 5000, DEFAULT_DISTANCE_FROM_WELL);
C.mission_add_data_well(0, -1, centre_block_x + GREEN_2_DIST_5, centre_block_y + GREEN_2_DIST_5)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_3, centre_block_y + GREEN_2_DIST_4)

C.add_line_between_data_wells(9 + 0, 9 + 1, 70)
C.add_line_between_data_wells(9 + 1, 9 + 2, 70)
C.add_line_between_data_wells(9 + 2, 9 + 3, 70)
C.add_line_between_data_wells(9 + 3, 9 + 4, 70)
C.add_line_between_data_wells(9 + 4, 9 + 0, 70)

centre_block_x = (C.get_map_size_blocks() / 2) - GREEN_2A_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) + GREEN_2A_CENTRE_DISTANCE

C.mission_add_data_well(1, -1, centre_block_x + GREEN_2A_DIST_1, centre_block_y - GREEN_2A_DIST_1)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2A_DIST_2, centre_block_y + GREEN_2A_DIST_2)
C.mission_add_data_well(0, -1, centre_block_x - GREEN_2A_DIST_1, centre_block_y + GREEN_2A_DIST_1)
C.mission_add_data_well(1, -1, centre_block_x - GREEN_2A_DIST_2, centre_block_y - GREEN_2A_DIST_2)

C.add_line_between_data_wells(14 + 0, 14 + 1, 70)
C.add_line_between_data_wells(14 + 1, 14 + 2, 70)
C.add_line_between_data_wells(14 + 2, 14 + 3, 70)
C.add_line_between_data_wells(14 + 3, 14 + 0, 70)

C.set_starting_data_setting(1, 6)
