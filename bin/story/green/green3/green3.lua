local C = require("game")

C.set_region_in_area_index(2)

sources = {"story/green/green3/g5_base.c", "story/green/green3/g5_firebase.c", "story/green/green3/g5_builder.c", "story/green/green3/g5_spikebase.c",
           "story/green/green3/g5_outpost.c", "story/green/green3/g5_builder2.c"}
for i, v in ipairs(sources) do
    C.load_mission_source(v, 1, i - 1)
end
C.clear_remaining_templates(1, #sources)

DEFAULT_DISTANCE_FROM_WELL = 512

GREEN_3_CENTRE_DISTANCE = 19
GREEN_3A_CENTRE_DISTANCE = 13

GREEN_2_DIST_1 = 0
GREEN_2_DIST_2 = 10
GREEN_2_DIST_3 = -3
GREEN_2_DIST_4 = 10
GREEN_2_DIST_5 = 11

centre_block_x = (C.get_map_size_blocks() / 2) - GREEN_3_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) - GREEN_3_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_2, centre_block_y + GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_1, centre_block_y + GREEN_2_DIST_2)

C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_4, centre_block_y - GREEN_2_DIST_3)

C.mission_add_data_well(0, -1, centre_block_x - GREEN_2_DIST_5, centre_block_y - GREEN_2_DIST_5)
C.set_player_spawn_position_by_latest_well(1, 1000, DEFAULT_DISTANCE_FROM_WELL)
C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_3, centre_block_y - GREEN_2_DIST_4)

C.add_line_between_data_wells(0, 1, 70)
C.add_line_between_data_wells(1, 2, 70)
C.add_line_between_data_wells(2, 3, 70)
C.add_line_between_data_wells(3, 4, 70)
C.add_line_between_data_wells(4, 0, 70)

centre_block_x = (C.get_map_size_blocks() / 2) + GREEN_3A_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) - GREEN_3A_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_2, centre_block_y + GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_1, centre_block_y + GREEN_2_DIST_2)

C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_4, centre_block_y - GREEN_2_DIST_3)
C.mission_add_data_well(0, -1, centre_block_x + GREEN_2_DIST_5, centre_block_y - GREEN_2_DIST_5)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_3, centre_block_y - GREEN_2_DIST_4)

C.add_line_between_data_wells(5 + 0, 5 + 1, 70)
C.add_line_between_data_wells(5 + 1, 5 + 2, 70)
C.add_line_between_data_wells(5 + 2, 5 + 3, 70)
C.add_line_between_data_wells(5 + 3, 5 + 4, 70)
C.add_line_between_data_wells(5 + 4, 5 + 0, 70)

centre_block_x = (C.get_map_size_blocks() / 2) + GREEN_3_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) + GREEN_3_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_2, centre_block_y - GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x - GREEN_2_DIST_1, centre_block_y - GREEN_2_DIST_2)

C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_4, centre_block_y + GREEN_2_DIST_3)
C.set_player_spawn_position_by_latest_well(0, 5000, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well(0, -1, centre_block_x + GREEN_2_DIST_5, centre_block_y + GREEN_2_DIST_5)
C.mission_add_data_well(1, -1, centre_block_x + GREEN_2_DIST_3, centre_block_y + GREEN_2_DIST_4)

C.add_line_between_data_wells(10 + 0, 10 + 1, 70)
C.add_line_between_data_wells(10 + 1, 10 + 2, 70)
C.add_line_between_data_wells(10 + 2, 10 + 3, 70)
C.add_line_between_data_wells(10 + 3, 10 + 4, 70)
C.add_line_between_data_wells(10 + 4, 10 + 0, 70)

centre_block_x = (C.get_map_size_blocks() / 2) - GREEN_3A_CENTRE_DISTANCE
centre_block_y = (C.get_map_size_blocks() / 2) + GREEN_3A_CENTRE_DISTANCE

C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_2, centre_block_y - GREEN_2_DIST_1)
C.mission_add_data_well(2, -1, centre_block_x + GREEN_2_DIST_1, centre_block_y - GREEN_2_DIST_2)

C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_4, centre_block_y + GREEN_2_DIST_3)

C.mission_add_data_well(0, -1, centre_block_x - GREEN_2_DIST_5, centre_block_y + GREEN_2_DIST_5)
C.mission_add_data_well(1, -1, centre_block_x - GREEN_2_DIST_3, centre_block_y + GREEN_2_DIST_4)

C.add_line_between_data_wells(15 + 0, 15 + 1, 70)
C.add_line_between_data_wells(15 + 1, 15 + 2, 70)
C.add_line_between_data_wells(15 + 2, 15 + 3, 70)
C.add_line_between_data_wells(15 + 3, 15 + 4, 70)
C.add_line_between_data_wells(15 + 4, 15 + 0, 70)

C.set_starting_data_setting(1, 6)
