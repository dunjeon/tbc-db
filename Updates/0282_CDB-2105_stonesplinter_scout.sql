-- Fix equipment of NPC 1162 (Stonesplinter Scout): it was missing its ranged weapon and also should switch equipment between day and night

-- Update night equipment and make day equipment as default
UPDATE creature_equip_template SET equipentry3=5856 WHERE entry=1162;
UPDATE creature_template SET EquipmentTemplateId=641 WHERE Entry=1162;

-- Add game event entry for switching equipment
DELETE FROM game_event_creature_data WHERE guid IN (8981, 8983, 8986, 8995, 8997, 9005, 9006, 9038, 9071, 9091, 9092, 9097, 9098, 9116, 9117, 9120, 9122, 9123, 9131, 9133, 9138, 9143, 9169, 9170, 9172, 9184, 9274, 9275, 9278, 9280, 9285);
INSERT INTO game_event_creature_data (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(8981, 0, 0, 1162, 0, 0, 27),
(8983, 0, 0, 1162, 0, 0, 27),
(8986, 0, 0, 1162, 0, 0, 27),
(8995, 0, 0, 1162, 0, 0, 27),
(8997, 0, 0, 1162, 0, 0, 27),
(9005, 0, 0, 1162, 0, 0, 27),
(9006, 0, 0, 1162, 0, 0, 27),
(9038, 0, 0, 1162, 0, 0, 27),
(9071, 0, 0, 1162, 0, 0, 27),
(9091, 0, 0, 1162, 0, 0, 27),
(9092, 0, 0, 1162, 0, 0, 27),
(9097, 0, 0, 1162, 0, 0, 27),
(9098, 0, 0, 1162, 0, 0, 27),
(9116, 0, 0, 1162, 0, 0, 27),
(9117, 0, 0, 1162, 0, 0, 27),
(9120, 0, 0, 1162, 0, 0, 27),
(9122, 0, 0, 1162, 0, 0, 27),
(9123, 0, 0, 1162, 0, 0, 27),
(9131, 0, 0, 1162, 0, 0, 27),
(9133, 0, 0, 1162, 0, 0, 27),
(9138, 0, 0, 1162, 0, 0, 27),
(9143, 0, 0, 1162, 0, 0, 27),
(9169, 0, 0, 1162, 0, 0, 27),
(9170, 0, 0, 1162, 0, 0, 27),
(9172, 0, 0, 1162, 0, 0, 27),
(9184, 0, 0, 1162, 0, 0, 27),
(9274, 0, 0, 1162, 0, 0, 27),
(9275, 0, 0, 1162, 0, 0, 27),
(9278, 0, 0, 1162, 0, 0, 27),
(9280, 0, 0, 1162, 0, 0, 27),
(9285, 0, 0, 1162, 0, 0, 27);
