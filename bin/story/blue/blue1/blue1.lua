local C = require("game")

C.set_region_in_area_index(0)

C.load_mission_source("story/blue/blue1/rbase.c", 1, 0)
C.load_mission_source("story/blue/blue1/wander1.c", 1, 1)
C.load_mission_source("story/blue/blue1/wander2.c", 1, 2)
C.clear_remaining_templates(1, 3)

DEFAULT_DISTANCE_FROM_WELL = 512
ANGLE_2 = 4096
ANGLE_3 = 2730
ANGLE_6 = 1365

base_data_well_angle = ANGLE_3

md_index = C.add_mdetail_ring(C.get_map_size_blocks() / 2, C.get_map_size_blocks() / 2, 30, 0)
C.mission_add_data_well_to_ring(0, 1, md_index, base_data_well_angle)
C.set_player_spawn_position_by_latest_well(0, base_data_well_angle + ANGLE_2, DEFAULT_DISTANCE_FROM_WELL)

C.mission_add_data_well_to_ring(1, 1, md_index,  base_data_well_angle + ANGLE_6)
C.mission_add_data_well_to_ring(2, -1, md_index, base_data_well_angle + ANGLE_6 * 2)
C.mission_add_data_well_to_ring(0, -1, md_index, base_data_well_angle + ANGLE_6 * 3)
C.set_player_spawn_position_by_latest_well(1, base_data_well_angle, DEFAULT_DISTANCE_FROM_WELL)
C.mission_add_data_well_to_ring(1, -1, md_index, base_data_well_angle + ANGLE_6 * 4)
C.mission_add_data_well_to_ring(2, 1, md_index,  base_data_well_angle + ANGLE_6 * 5)
