local C = require("game")

C.set_region_in_area_index(1)

C.load_mission_source("story/blue/blue2/b2_rbase.c", 1, 0)
C.load_mission_source("story/blue/blue2/b2_wander1.c", 1, 1)
C.load_mission_source("story/blue/blue2/b2_wander2.c", 1, 2)
C.load_mission_source("story/blue/blue2/b2_harvest.c", 1, 3)
C.clear_remaining_templates(1, 4)

C.set_starting_data_setting(1, 1)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_4 = 2048
ANGLE_8 = 1024

base_data_well_angle = ANGLE_8 * 3;

md_index_centre = C.add_mdetail_ring(C.get_map_size_blocks() / 2, C.get_map_size_blocks() / 2, 37, 0)
md_index_A = C.add_mdetail_ring(C.get_map_size_blocks() / 2, C.get_map_size_blocks() / 2, 15, 0)

C.mission_add_data_well_to_ring(0, 1, md_index_A, base_data_well_angle)
C.set_player_spawn_position_by_latest_well(0, base_data_well_angle + ANGLE_2, DEFAULT_DISTANCE_FROM_WELL);

C.mission_add_data_well_to_ring(0, -1, md_index_centre, base_data_well_angle + ANGLE_2)
C.set_player_spawn_position_by_latest_well(1, base_data_well_angle, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well_to_ring(1, 1, md_index_centre, ANGLE_4 + ANGLE_8)
C.mission_add_data_well_to_ring(1, -1, md_index_centre, -ANGLE_8)

C.mission_add_data_well_to_ring(1, 1, md_index_centre, ANGLE_2 + ANGLE_8)
C.mission_add_data_well_to_ring(1, -1, md_index_centre, ANGLE_8)

C.mission_add_data_well_to_ring(2, -1, md_index_A, ANGLE_2 + ANGLE_8)
C.mission_add_data_well_to_ring(2, 1, md_index_A, ANGLE_8)
C.mission_add_data_well_to_ring(2, -1, md_index_A, -ANGLE_8)
