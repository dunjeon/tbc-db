/* DBScriptData
DBName: Hellfire Citadel - The Blood Furnace
DBScriptName: instance_blood_furnace
DB%Complete: 80
DBComment:
* ai second boss adds aggro drop ability, spell scripting for second boss aoe ability (scaling)
* Core Issue: Pooling overwrites spawnmask making it possible to have heroic chest in normal, chests need some sort of chanced solution where the maxchance of a pool might be below 100%
EndDBScriptData */

SET @CGUID := 5420000; -- creatures
SET @OGUID := 5420000; -- gameobjects
SET @PGUID := 48100; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+17, 1, 339.362, 183.755, 9.6091, 0.172162, 0, 0),
(@CGUID+17, 2, 349.743, 186.388, 9.60639, 0.134463, 0, 0),
(@CGUID+17, 3, 364.152, 188.35, 9.59488, 0.054352, 0, 0),
(@CGUID+17, 4, 347.804, 186.949, 9.60415, 3.26663, 0, 0),
(@CGUID+17, 5, 329.361, 182.444, 9.61534, 3.34517, 0, 0),
(@CGUID+17, 6, 307.538, 175.719, 9.61668, 3.43471, 0, 0),
(@CGUID+17, 7, 329.957, 181.351, 9.61596, 0.234996, 0, 0),
(@CGUID+19, 1, 443.618, 185.872, 9.61068, 6.02181, 0, 0),
(@CGUID+19, 2, 458.616, 181.873, 9.62096, 6.08936, 0, 0),
(@CGUID+19, 3, 467.346, 176.986, 9.62002, 5.9582, 0, 0),
(@CGUID+19, 4, 473.427, 168.343, 9.61637, 5.20971, 0, 0),
(@CGUID+19, 5, 467.384, 177.094, 9.62139, 2.33202, 0, 0),
(@CGUID+19, 6, 457.902, 182.779, 9.62097, 2.5967, 0, 0),
(@CGUID+19, 7, 444.059, 186.519, 9.60857, 2.82053, 0, 0),
(@CGUID+19, 8, 426.13, 188.597, 9.61005, 3.12134, 0, 0),
(@CGUID+19, 9, 412.384, 188.39, 9.60157, 3.18575, 0, 0),
(@CGUID+19, 10, 427.898, 186.678, 9.61325, 6.13649, 0, 0),
(@CGUID+20, 1, 351.924, 68.5651, 9.62013, 4.59609, 0, 0),
(@CGUID+20, 2, 345.648, 68.5841, 9.61873, 2.95461, 0, 0),
(@CGUID+20, 3, 345.188, 90.9408, 9.61949, 1.56288, 0, 0),
(@CGUID+20, 4, 351.082, 102.696, 9.62003, 1.10185, 0, 0),
(@CGUID+20, 5, 348.276, 114.275, 9.61243, 1.71368, 0, 0),
(@CGUID+20, 6, 349.857, 113.245, 9.61427, 5.92498, 0, 0),
(@CGUID+20, 7, 353.357, 100.32, 9.62133, 4.97858, 0, 0),
(@CGUID+20, 8, 353.13, 95.8804, 9.6226, 4.66127, 0, 0),
(@CGUID+20, 9, 348.177, 86.3186, 9.6226, 4.33533, 0, 0),
(@CGUID+20, 10, 348.465, 79.7799, 9.61812, 4.75631, 0, 0),
(@CGUID+20, 11, 351.763, 73.9162, 9.62117, 5.38227, 0, 0),
(@CGUID+21, 1, 217.473, -84.6299, 9.58353, 5.96112, 0, 0),
(@CGUID+21, 2, 229.189, -86.3447, 9.60844, 0.124044, 0, 0),
(@CGUID+21, 3, 234.913, -82.2898, 9.61604, 0.698955, 0, 0),
(@CGUID+21, 4, 239.968, -60.1875, 9.60461, 1.38382, 0, 0),
(@CGUID+21, 5, 236.534, -77.5412, 9.62499, 4.5372, 0, 0),
(@CGUID+21, 6, 230.965, -84.5165, 9.59718, 4.00313, 0, 0),
(@CGUID+22, 1, 327.529, 25.5438, 9.61594, 1.60609, 0, 0),
(@CGUID+22, 2, 327.397, -12.9441, 9.29274, 4.63537, 0, 0),
(@CGUID+24, 1, 317.703, -172.405, -25.4257, 6.10865, 32000, 1737101),
(@CGUID+24, 2, 317.703, -172.405, -25.4257, 6.10865, 34000, 1737101),
(@CGUID+24, 3, 317.703, -172.405, -25.4257, 6.10865, 26000, 1737101),
(@CGUID+24, 4, 317.703, -172.405, -25.4257, 6.10865, 29000, 1737101),
(@CGUID+24, 5, 317.703, -172.405, -25.4257, 6.10865, 26000, 1737101),
(@CGUID+25, 1, 328.897, -188.367, -25.4252, 1.50098, 26000, 1737101),
(@CGUID+25, 2, 328.897, -188.367, -25.4252, 1.50098, 34000, 1737101),
(@CGUID+25, 3, 328.897, -188.367, -25.4252, 1.50098, 28000, 1737101),
(@CGUID+25, 4, 328.897, -188.367, -25.4252, 1.50098, 28000, 1737101),
(@CGUID+25, 5, 328.897, -188.367, -25.4252, 1.50098, 32000, 1737101),
(@CGUID+35, 1, 454.405, 101.397, 9.69803, 4.36332, 5000, 1011),
(@CGUID+35, 2, 454.405, 101.397, 9.69803, 4.36332, 7000, 1001),
(@CGUID+35, 3, 454.405, 101.397, 9.69803, 4.36332, 9000, 1005),
(@CGUID+35, 4, 454.405, 101.397, 9.69803, 4.36332, 3000, 1001),
(@CGUID+40, 1, 312.673, 9.93063, 9.70182, 0.471239, 9000, 1001),
(@CGUID+40, 2, 312.673, 9.93063, 9.70182, 0.471239, 5000, 1001),
(@CGUID+40, 3, 312.673, 9.93063, 9.70182, 0.471239, 12000, 1001),
(@CGUID+40, 4, 312.673, 9.93063, 9.70182, 0.471239, 5000, 1001),
(@CGUID+41, 1, 336.493, 10.2814, 9.70285, 5.88176, 3000, 1001),
(@CGUID+41, 2, 336.493, 10.2814, 9.70285, 5.88176, 9000, 1001),
(@CGUID+41, 3, 336.493, 10.2814, 9.70285, 5.88176, 7000, 1001),
(@CGUID+41, 4, 336.493, 10.2814, 9.70285, 5.88176, 11000, 1001),
(@CGUID+44, 1, 450.437, 99.8139, 9.69946, 6.12611, 5000, 1001),
(@CGUID+44, 2, 450.437, 99.8139, 9.69946, 6.12611, 3000, 1011),
(@CGUID+44, 3, 450.437, 99.8139, 9.69946, 6.12611, 9000, 1001),
(@CGUID+44, 4, 450.437, 99.8139, 9.69946, 6.12611, 5000, 1006),
(@CGUID+60, 1, 317.887, 15.2039, 9.70386, 3.9968, 5000, 1001),
(@CGUID+60, 2, 317.887, 15.2039, 9.70386, 3.9968, 7000, 1001),
(@CGUID+60, 3, 317.887, 15.2039, 9.70386, 3.9968, 9000, 1001),
(@CGUID+60, 4, 317.887, 15.2039, 9.70386, 3.9968, 3000, 1001),
(@CGUID+61, 1, 342.892, 8.10405, 9.7048, 3.00197, 5000, 1001),
(@CGUID+61, 2, 342.892, 8.10405, 9.7048, 3.00197, 3000, 1001),
(@CGUID+61, 3, 342.892, 8.10405, 9.7048, 3.00197, 9000, 1001),
(@CGUID+61, 4, 342.892, 8.10405, 9.7048, 3.00197, 5000, 1001),
(@CGUID+86, 1, 453.979, 96.0174, 9.69831, 2.32129, 3000, 1005),
(@CGUID+86, 2, 453.979, 96.0174, 9.69831, 2.32129, 9000, 1001),
(@CGUID+86, 3, 453.979, 96.0174, 9.69831, 2.32129, 7000, 1011),
(@CGUID+86, 4, 453.979, 96.0174, 9.69831, 2.32129, 11000, 1001),
(@CGUID+171, 1, 108.671, -92.9221, -13.5135, 3.0143, 0, 0),
(@CGUID+171, 2, 64.4651, -93.1118, -33.9529, 3.13997, 0, 0),
(@CGUID+171, 3, 108.745, -93.0331, -13.4789, 0.05178, 0, 0),
(@CGUID+171, 4, 148.114, -92.7681, 4.52041, 0.009369, 0, 0),
(@CGUID+172, 1, 476.784, -93.1227, 9.55735, 3.73372, 0, 0),
(@CGUID+172, 2, 467.336, -88.8467, 9.55295, 2.59097, 0, 0),
(@CGUID+172, 3, 464.628, -82.5587, 9.56012, 1.83227, 0, 0),
(@CGUID+172, 4, 463.878, -71.4555, 9.55183, 1.52047, 0, 0),
(@CGUID+172, 5, 460.545, -58.1939, 9.56811, 1.87704, 0, 0),
(@CGUID+172, 6, 463.794, -49.3992, 9.56217, 1.14741, 0, 0),
(@CGUID+172, 7, 473.043, -41.0408, 9.55712, 0.244984, 0, 0),
(@CGUID+172, 8, 500.463, -34.7989, 9.5586, 0.244984, 0, 0),
(@CGUID+172, 9, 495.844, -37.3874, 9.55436, 3.4659, 0, 0),
(@CGUID+172, 10, 488.296, -49.2509, 9.56225, 4.17276, 0, 0),
(@CGUID+172, 11, 479.408, -51.4883, 9.55797, 3.33474, 0, 0),
(@CGUID+172, 12, 469.355, -49.6048, 9.56227, 3.0088, 0, 0),
(@CGUID+172, 13, 462.947, -58.276, 9.54588, 4.17354, 0, 0),
(@CGUID+172, 14, 466.379, -84.5461, 9.55922, 4.91339, 0, 0),
(@CGUID+172, 15, 470.883, -90.6855, 9.55499, 5.28017, 0, 0),
(@CGUID+172, 16, 477.229, -93.2723, 9.55717, 6.01216, 0, 0),
(@CGUID+172, 17, 483.607, -88.3845, 9.55416, 0.815969, 0, 0),
(@CGUID+177, 1, 318.44, -3.40513, 9.62037, 6.22658, 0, 0),
(@CGUID+177, 2, 336.66, -4.4375, 9.61881, 6.22658, 0, 0),
(@CGUID+177, 3, 347.978, -6.72423, 9.62585, 6.22658, 15000, 0),
(@CGUID+177, 4, 335.049, -4.53043, 9.6238, 2.91142, 0, 0),
(@CGUID+177, 5, 318.923, -4.32011, 9.62293, 3.27427, 0, 0),
(@CGUID+177, 6, 303.602, -3.40234, 9.61094, 2.86351, 15000, 0),
(@CGUID+181, 1, 304.82, 66.9249, 9.61786, 3.77693, 0, 0),
(@CGUID+181, 2, 301.95, 66.4194, 9.6182, 3.07635, 0, 0),
(@CGUID+181, 3, 301.944, 72.4956, 9.62041, 1.38618, 0, 0),
(@CGUID+181, 4, 307.926, 76.2297, 9.61885, 0.753931, 0, 0),
(@CGUID+181, 5, 310.482, 78.6303, 9.61829, 0.753931, 0, 0),
(@CGUID+181, 6, 311.771, 89.6086, 9.6187, 1.26444, 0, 0),
(@CGUID+181, 7, 306.398, 97.5514, 9.62027, 2.16765, 0, 0),
(@CGUID+181, 8, 308.906, 114.001, 9.61452, 1.40974, 0, 0),
(@CGUID+181, 9, 326.926, 119.789, 9.6151, 0.377725, 0, 0),
(@CGUID+181, 10, 326.655, 79.8691, 9.6151, 4.67935, 0, 0),
(@CGUID+182, 1, 466.746, 103.443, 9.61823, 1.5046, 0, 0),
(@CGUID+182, 2, 460.166, 109.575, 9.61542, 2.41252, 0, 0),
(@CGUID+182, 3, 446.289, 109.818, 9.61699, 3.12017, 0, 0),
(@CGUID+182, 4, 439.528, 102.205, 9.61813, 4.054, 0, 0),
(@CGUID+182, 5, 438.845, 79.5266, 9.61898, 4.69332, 3000, 0),
(@CGUID+182, 6, 434.828, 72.1629, 9.61571, 4.47026, 0, 0),
(@CGUID+182, 7, 444.507, 68.2273, 9.61459, 5.75596, 0, 0),
(@CGUID+182, 8, 458.353, 67.9839, 9.61569, 6.28061, 0, 0),
(@CGUID+182, 9, 465.818, 74.6463, 9.61723, 0.773398, 0, 0),
(@CGUID+196, 1, 490.932, -74.1161, 9.5538, 1.50084, 5000, 1889401),
(@CGUID+196, 2, 487.898, -68.2115, 9.54962, 2.16764, 0, 0),
(@CGUID+196, 3, 481.883, -63.8886, 9.54679, 2.65459, 0, 0),
(@CGUID+196, 4, 472.176, -62.9624, 9.54538, 2.96875, 5000, 1889401),
(@CGUID+196, 5, 465.56, -68.5521, 9.54718, 3.85703, 0, 0),
(@CGUID+196, 6, 464.085, -83.4881, 9.56054, 4.55839, 5000, 1889401),
(@CGUID+196, 7, 464.375, -71.6199, 9.55217, 1.38853, 0, 0),
(@CGUID+196, 8, 469.352, -64.6788, 9.54787, 1.06809, 0, 0),
(@CGUID+196, 9, 478.612, -62.6469, 9.54498, 0.175088, 0, 0),
(@CGUID+196, 10, 486.064, -66.3932, 9.54751, 5.84252, 0, 0),
(@CGUID+196, 11, 489.049, -70.2684, 9.54869, 5.38935, 0, 0),
(@CGUID+196, 12, 489.83, -77.8941, 9.55994, 4.81444, 0, 0),
(@CGUID+197, 1, 493.362, -8.68338, 9.5612, 0.589779, 5000, 1889401),
(@CGUID+197, 2, 491.364, -12.7158, 9.56095, 4.2246, 0, 0),
(@CGUID+197, 3, 488.805, -28.512, 9.54957, 4.61259, 0, 0),
(@CGUID+197, 4, 489.434, -43.8256, 9.55707, 4.64479, 0, 0),
(@CGUID+197, 5, 486.861, -48.372, 9.56171, 4.09344, 5000, 1889401),
(@CGUID+197, 6, 469.609, -47.661, 9.56227, 3.09677, 0, 0),
(@CGUID+197, 7, 465.538, -44.9848, 9.56087, 2.51714, 0, 0),
(@CGUID+197, 8, 462.41, -36.9628, 9.55242, 2.04198, 0, 0),
(@CGUID+197, 9, 461.945, -28.9552, 9.5481, 1.63593, 0, 0),
(@CGUID+197, 10, 463.569, -25.5645, 9.5481, 1.15448, 0, 0),
(@CGUID+197, 11, 467.51, -22.6321, 9.54876, 0.632188, 5000, 1889401),
(@CGUID+197, 12, 479.996, -21.3982, 9.55193, 6.26506, 0, 0),
(@CGUID+197, 13, 484.093, -19.5356, 9.55428, 0.219069, 0, 0),
(@CGUID+197, 14, 489.485, -11.4491, 9.56425, 0.890584, 0, 0);

DELETE FROM creature_movement_template WHERE entry IN (17380);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(17380, 0, 1, 455.6496, 33.33417, 9.544375, 100, 0, 0),
(17380, 0, 2, 456.105, 44.3159, 9.62544, 100, 0, 0),
(17380, 0, 3, 458.401, 50.6364, 9.62375, 100, 0, 0),
(17380, 0, 4, 461.782, 54.9224, 9.6233, 100, 0, 0),
(17380, 0, 5, 463.657, 60.3144, 9.61813, 100, 0, 0),
(17380, 0, 6, 456.328, 78.3051, 9.61487, 100, 0, 0),
(17380, 0, 7, 456.328, 78.3051, 9.61487, 1.53589, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+26, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Warlock
(@CGUID+31, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Warlock
(@CGUID+32, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Warlock
(@CGUID+33, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Warlock
(@CGUID+34, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Warlock
(@CGUID+43, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Summoner
(@CGUID+45, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Summoner
(@CGUID+47, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+48, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+49, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+50, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+51, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+52, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+53, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+54, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+55, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+56, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+57, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+58, 0, 0, 1, 16, 0, 0, '8876 31059'), -- Shadowmoon Adept
(@CGUID+66, 0, 0, 1, 16, 13, 0, NULL), -- Nascent Fel Orc
(@CGUID+68, 0, 0, 1, 16, 13, 0, NULL), -- Nascent Fel Orc
(@CGUID+75, 0, 0, 1, 16, 13, 0, NULL), -- Nascent Fel Orc
(@CGUID+85, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+87, 0, 0, 1, 16, 0, 0, '31059'), -- Shadowmoon Technician
(@CGUID+88, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+90, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+92, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+94, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+95, 0, 0, 0, 16, 69, 0, NULL), -- Shadowmoon Technician
(@CGUID+144, 0, 0, 1, 16, 13, 0, NULL); -- Fel Orc Neophyte

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(17370, 0, 0, 1, 16, 333, 0, NULL), -- Laughing Skull Enforcer
(17380, 0, 0, 1, 16, 0, 0, NULL), -- Broggok
(17397, 0, 0, 1, 16, 0, 0, '8876'), -- Shadowmoon Adept
(17477, 0, 0, 1, 16, 0, 0, '35766'), -- Hellfire Imp
(17491, 0, 0, 1, 16, 0, 0, '32199'), -- Laughing Skull Rogue
(17653, 0, 0, 1, 16, 0, 0, NULL), -- Shadowmoon Channeler
(21174, 0, 0, 1, 16, 0, 0, '30205'); -- Magtheridon

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+12, @CGUID+9, 1167), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+9, @CGUID+38, 1024), -- Laughing Skull Enforcer -> The Maker
(@CGUID+52, @CGUID+166, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+48, @CGUID+166, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+166, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
(@CGUID+47, @CGUID+167, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+50, @CGUID+167, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+167, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
(@CGUID+51, @CGUID+165, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+53, @CGUID+165, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+165, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
(@CGUID+7, @CGUID+10, 1167), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+10, @CGUID+38, 1024), -- Laughing Skull Enforcer -> The Maker
-- (@CGUID+171, @CGUID+38, 1024), -- Laughing Skull Rogue -> The Maker
-- (@CGUID+173, @CGUID+38, 1024), -- Laughing Skull Rogue -> The Maker
-- (@CGUID+174, @CGUID+38, 1024), -- Laughing Skull Rogue -> The Maker
(@CGUID+11, @CGUID+6, 1167), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+6, @CGUID+38, 1024), -- Laughing Skull Enforcer -> The Maker
(@CGUID+49, @CGUID+169, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+54, @CGUID+169, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+169, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
(@CGUID+55, @CGUID+168, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+56, @CGUID+168, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+168, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
(@CGUID+57, @CGUID+170, 1167), -- Shadowmoon Adept -> Hellfire Imp
(@CGUID+58, @CGUID+170, 1167), -- Shadowmoon Adept -> Hellfire Imp
-- (@CGUID+170, @CGUID+38, 1024), -- Hellfire Imp -> The Maker
-- (@CGUID+21, @CGUID+38, 1024), -- Shadowmoon Warlock -> The Maker
(@CGUID+8, @CGUID+183, 1167), -- Laughing Skull Enforcer -> Laughing Skull Legionnaire
-- (@CGUID+183, @CGUID+38, 1024), -- Laughing Skull Legionnaire -> The Maker
(@CGUID+13, @CGUID+184, 1167), -- Laughing Skull Enforcer -> Laughing Skull Legionnaire
-- (@CGUID+184, @CGUID+38, 1024), -- Laughing Skull Legionnaire -> The Maker
-- (@CGUID+177, @CGUID+38, 1024), -- Laughing Skull Rogue -> The Maker
-- (@CGUID+22, @CGUID+38, 1024), -- Shadowmoon Warlock -> The Maker
(@CGUID+59, @CGUID+40, 1167), -- Shadowmoon Adept -> Shadowmoon Summoner
(@CGUID+60, @CGUID+40, 1167), -- Shadowmoon Adept -> Shadowmoon Summoner
-- (@CGUID+40, @CGUID+38, 1024), -- Shadowmoon Summoner -> The Maker
(@CGUID+42, @CGUID+41, 1167), -- Shadowmoon Summoner -> Shadowmoon Summoner
(@CGUID+61, @CGUID+41, 1167), -- Shadowmoon Adept -> Shadowmoon Summoner
-- (@CGUID+41, @CGUID+38, 1024), -- Shadowmoon Summoner -> The Maker
(@CGUID+14, @CGUID+15, 1167), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+15, @CGUID+38, 1024), -- Laughing Skull Enforcer -> The Maker
(@CGUID+188, @CGUID+181, 1679), -- Laughing Skull Legionnaire -> Laughing Skull Warden
-- (@CGUID+181, @CGUID+38, 1024), -- Laughing Skull Warden -> The Maker
(@CGUID+187, @CGUID+20, 1679), -- Laughing Skull Legionnaire -> Shadowmoon Warlock
-- (@CGUID+20, @CGUID+38, 1024), -- Shadowmoon Warlock -> The Maker
(@CGUID+96, @CGUID+46, 1167), -- Shadowmoon Technician -> Shadowmoon Summoner
-- (@CGUID+46, @CGUID+38, 1024), -- Shadowmoon Summoner -> The Maker
(@CGUID+83, @CGUID+39, 1167), -- Shadowmoon Technician -> Shadowmoon Summoner
-- (@CGUID+39, @CGUID+38, 1024), -- Shadowmoon Summoner -> The Maker
(@CGUID+84, @CGUID+82, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
-- (@CGUID+82, @CGUID+38, 1024), -- Shadowmoon Technician -> The Maker
(@CGUID+16, @CGUID+17, 1679), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+17, @CGUID+37, 1024), -- Laughing Skull Enforcer -> Broggok
-- (@CGUID+175, @CGUID+37, 1024), -- Laughing Skull Rogue -> Broggok
-- (@CGUID+179, @CGUID+37, 1024), -- Laughing Skull Rogue -> Broggok
(@CGUID+65, @CGUID+85, 1167), -- Nascent Fel Orc -> Shadowmoon Technician
(@CGUID+88, @CGUID+85, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
-- (@CGUID+85, @CGUID+37, 1024), -- Shadowmoon Technician -> Broggok
(@CGUID+67, @CGUID+92, 1167), -- Nascent Fel Orc -> Shadowmoon Technician
(@CGUID+90, @CGUID+92, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
-- (@CGUID+92, @CGUID+37, 1024), -- Shadowmoon Technician -> Broggok
(@CGUID+32, @CGUID+68, 1167), -- Shadowmoon Warlock -> Nascent Fel Orc
(@CGUID+45, @CGUID+68, 1167), -- Shadowmoon Summoner -> Nascent Fel Orc
-- (@CGUID+68, @CGUID+37, 1024), -- Nascent Fel Orc -> Broggok
(@CGUID+33, @CGUID+75, 1167), -- Shadowmoon Warlock -> Nascent Fel Orc
(@CGUID+34, @CGUID+75, 1167), -- Shadowmoon Warlock -> Nascent Fel Orc
-- (@CGUID+75, @CGUID+37, 1024), -- Nascent Fel Orc -> Broggok
(@CGUID+18, @CGUID+19, 1679), -- Laughing Skull Enforcer -> Laughing Skull Enforcer
-- (@CGUID+19, @CGUID+37, 1024), -- Laughing Skull Enforcer -> Broggok
(@CGUID+73, @CGUID+94, 1167), -- Nascent Fel Orc -> Shadowmoon Technician
(@CGUID+95, @CGUID+94, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
-- (@CGUID+94, @CGUID+37, 1024), -- Shadowmoon Technician -> Broggok
-- (@CGUID+178, @CGUID+37, 1024), -- Laughing Skull Rogue -> Broggok
(@CGUID+185, @CGUID+182, 1679), -- Laughing Skull Legionnaire -> Laughing Skull Warden
(@CGUID+186, @CGUID+182, 1679), -- Laughing Skull Legionnaire -> Laughing Skull Warden
-- (@CGUID+182, @CGUID+37, 1024), -- Laughing Skull Rogue -> Broggok
(@CGUID+44, @CGUID+35, 1167), -- Shadowmoon Summoner -> Shadowmoon Warlock
(@CGUID+86, @CGUID+35, 1167), -- Shadowmoon Technician -> Shadowmoon Warlock
-- (@CGUID+35, @CGUID+37, 1024), -- Shadowmoon Warlock -> Broggok
(@CGUID+89, @CGUID+91, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
(@CGUID+93, @CGUID+91, 1167), -- Shadowmoon Technician -> Shadowmoon Technician
-- (@CGUID+91, @CGUID+37, 1024), -- Shadowmoon Technician -> Broggok
(@CGUID+31, @CGUID+66, 1167), -- Shadowmoon Warlock -> Nascent Fel Orc
(@CGUID+87, @CGUID+66, 1167), -- Shadowmoon Technician -> Nascent Fel Orc
-- (@CGUID+66, @CGUID+37, 1024), -- Nascent Fel Orc -> Broggok
(@CGUID+26, @CGUID+144, 1167), -- Shadowmoon Warlock -> Fel Orc Neophyte
(@CGUID+43, @CGUID+144, 1167), -- Shadowmoon Summoner -> Fel Orc Neophyte
-- (@CGUID+144, @CGUID+37, 1024), -- Nascent Fel Orc -> Broggok
(@CGUID+28, @CGUID+30, 1679), -- Shadowmoon Warlock -> Shadowmoon Warlock
(@CGUID+204, @CGUID+30, 1679), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+205, @CGUID+30, 1679), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+206, @CGUID+30, 1679), -- Hellfire Familiar -> Shadowmoon Warlock
-- (@CGUID+30, @CGUID+36, 1024), -- Shadowmoon Warlock -> Keli'dan the Breaker
(@CGUID+27, @CGUID+197, 1679), -- Shadowmoon Warlock -> Felguard Brute
-- (@CGUID+197, @CGUID+36, 1024), -- Felguard Brute -> Keli'dan the Breaker
-- (@CGUID+172, @CGUID+36, 1024), -- Laughing Skull Rogue -> Keli'dan the Breaker
-- (@CGUID+176, @CGUID+36, 1024), -- Laughing Skull Rogue -> Keli'dan the Breaker
(@CGUID+29, @CGUID+196, 1679), -- Shadowmoon Warlock -> Felguard Brute
-- (@CGUID+196, @CGUID+36, 1024), -- Felguard Brute -> Keli'dan the Breaker
(@CGUID+195, @CGUID+194, 1167), -- Felguard Brute -> Felguard Brute
-- (@CGUID+194, @CGUID+36, 1024), -- Felguard Brute -> Keli'dan the Breaker
(@CGUID+198, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+199, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+200, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+201, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+202, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
(@CGUID+203, @CGUID+23, 1167), -- Hellfire Familiar -> Shadowmoon Warlock
-- (@CGUID+23, @CGUID+36, 1024), -- Shadowmoon Warlock -> Keli'dan the Breaker
-- (@CGUID+180, @CGUID+36, 1024), -- Laughing Skull Rogue -> Keli'dan the Breaker
(@CGUID+81, @CGUID+79, 1167), -- Felguard Annihilator -> Felguard Annihilator
-- (@CGUID+79, @CGUID+36, 1024), -- Felguard Annihilator -> Keli'dan the Breaker
(@CGUID+77, @CGUID+25, 1167), -- Felguard Annihilator -> Shadowmoon Warlock
(@CGUID+80, @CGUID+25, 1167), -- Felguard Annihilator -> Shadowmoon Warlock
-- (@CGUID+25, @CGUID+36, 1024), -- Shadowmoon Warlock -> Keli'dan the Breaker
(@CGUID+76, @CGUID+24, 1167), -- Felguard Annihilator -> Shadowmoon Warlock
(@CGUID+78, @CGUID+24, 1167); -- Felguard Annihilator -> Shadowmoon Warlock
-- (@CGUID+24, @CGUID+36, 1024); -- Shadowmoon Warlock -> Keli'dan the Breaker

-- INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 17256, 542, 3, 308.203, -141.77, -137.368, 1.36136, 7200, 7200, 0, 0, 0, 0), -- Hellfire Channeler
(@CGUID+2, 17256, 542, 3, 307.784, -31.8501, -137.368, 4.95674, 7200, 7200, 0, 0, 0, 0), -- Hellfire Channeler
(@CGUID+3, 17256, 542, 3, 274.133, -87.1647, -137.368, 0.0174533, 7200, 7200, 0, 0, 0, 0), -- Hellfire Channeler
(@CGUID+4, 17256, 542, 3, 369.15, -55.5658, -137.368, 3.71755, 7200, 7200, 0, 0, 0, 0), -- Hellfire Channeler
(@CGUID+5, 17256, 542, 3, 369.461, -118.757, -137.368, 2.54818, 7200, 7200, 0, 0, 0, 0), -- Hellfire Channeler
(@CGUID+6, 17370, 542, 3, 194.334, -78.6621, 9.6981, 3.01942, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+7, 17370, 542, 3, 49.2231, -75.6242, -40.1856, 2.98451, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+8, 17370, 542, 3, 260.845, -26.4811, 7.03858, 3.90954, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+9, 17370, 542, 3, 7.83757, -54.6224, -41.258, 1.62316, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+10, 17370, 542, 3, 49.3209, -93.3478, -40.1856, 2.86234, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+11, 17370, 542, 3, 195.057, -91.4088, 9.70065, 3.05433, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+12, 17370, 542, 3, -4.06964, -56.7616, -41.258, 1.41372, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+13, 17370, 542, 3, 284.574, -8.76476, 8.92013, 3.56047, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+14, 17370, 542, 3, 323.929, 28.1413, 9.7042, 4.74729, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+15, 17370, 542, 3, 331.069, 28.079, 9.70469, 4.67748, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+16, 17370, 542, 3, 327.803, 182.115, 9.62206, 0.139018, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+17, 17370, 542, 3, 327.901, 180.496, 9.62367, 0.103832, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Enforcer
(@CGUID+18, 17370, 542, 3, 428.436, 187.806, 9.59769, 5.95395, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Enforcer
(@CGUID+19, 17370, 542, 3, 428.214, 185.775, 9.61332, 6.11135, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Enforcer
(@CGUID+20, 17371, 542, 3, 351.593, 69.7604, 9.61397, 5.0562, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+21, 17371, 542, 3, 220.666, -92.9601, 9.70599, 6.10865, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+22, 17371, 542, 3, 327.142, -10.5998, 9.4388, 1.50538, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+23, 17371, 542, 3, 423.094, -82.3433, 9.62334, 2.69742, 7200, 7200, 3, 0, 0, 1), -- Shadowmoon Warlock
(@CGUID+24, 17371, 542, 3, 317.703, -172.405, -25.4257, 6.10865, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+25, 17371, 542, 3, 328.897, -188.367, -25.4252, 1.50098, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+26, 17371, 542, 3, 445.659, 61.7842, 9.6945, 4.32842, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+27, 17371, 542, 3, 490.501, -7.73751, 9.56211, 0.522235, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+28, 17371, 542, 3, 494.708, 3.53913, 9.6299, 2.89725, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+29, 17371, 542, 3, 488.784, -75.9049, 9.55539, 1.88176, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+30, 17371, 542, 3, 488.798, 14.6936, 9.63497, 4.4855, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+31, 17371, 542, 3, 467.006, 63.6023, 9.6947, 5.23599, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+32, 17371, 542, 3, 369.573, 188.566, 9.68575, 0.628318, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+33, 17371, 542, 3, 399.387, 189.727, 9.68624, 0.261799, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+34, 17371, 542, 3, 408.15, 185.32, 9.68053, 1.5708, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Warlock
(@CGUID+35, 17371, 542, 3, 454.405, 101.397, 9.69803, 4.36332, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Warlock
(@CGUID+36, 17377, 542, 3, 326.503, -86.0027, -24.577, 3.59538, 604800, 604800, 0, 0, 0, 0), -- Keli'dan the Breaker
(@CGUID+37, 17380, 542, 3, 455.336, -1.82919, 9.62987, 1.43117, 604800, 604800, 0, 0, 0, 0), -- Broggok
(@CGUID+38, 17381, 542, 3, 329.362, 130.727, 9.61975, 0.725561, 604800, 604800, 3, 0, 0, 1), -- The Maker
(@CGUID+39, 17395, 542, 3, 340.264, 102.191, 9.70259, 4.53786, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Summoner
(@CGUID+40, 17395, 542, 3, 312.673, 9.93063, 9.70182, 0.471239, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Summoner
(@CGUID+41, 17395, 542, 3, 336.493, 10.2814, 9.70285, 5.88176, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Summoner
(@CGUID+42, 17395, 542, 3, 336.22, 4.42312, 9.70336, 1.29154, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Summoner
(@CGUID+43, 17395, 542, 3, 440.665, 61.7038, 9.69266, 4.90438, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Summoner
(@CGUID+44, 17395, 542, 3, 450.437, 99.8139, 9.69946, 6.12611, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Summoner
(@CGUID+45, 17395, 542, 3, 382.414, 190.222, 9.68517, 2.6529, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Summoner
(@CGUID+46, 17395, 542, 3, 330.141, 66.2716, 9.69705, 2.09439, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Summoner
(@CGUID+47, 17397, 542, 3, 7.43979, -82.9958, -41.247, 3.82227, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+48, 17397, 542, 3, -13.8548, -80.9222, -41.2515, 5.74213, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+49, 17397, 542, 3, 228.103, -95.1819, 9.70213, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+50, 17397, 542, 3, 3.62559, -87.8099, -41.2477, 1.51844, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+51, 17397, 542, 3, 25.4215, -89.4724, -40.7967, 1.16937, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+52, 17397, 542, 3, -10.9109, -86.8146, -41.2509, 1.65806, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+53, 17397, 542, 3, 28.6712, -81.6824, -40.8284, 4.50295, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+54, 17397, 542, 3, 225.904, -103.428, 9.70708, 1.09956, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+55, 17397, 542, 3, 243.915, -72.8069, 9.6978, 1.18682, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+56, 17397, 542, 3, 245.434, -64.0703, 9.7095, 4.39823, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+57, 17397, 542, 3, 229.353, -74.0326, 9.70233, 2.16421, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+58, 17397, 542, 3, 224.71, -67.6308, 9.70571, 5.28835, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+59, 17397, 542, 3, 317.735, 9.34628, 9.70236, 2.16421, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Adept
(@CGUID+60, 17397, 542, 3, 317.887, 15.2039, 9.70386, 3.9968, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Adept
(@CGUID+61, 17397, 542, 3, 342.892, 8.10405, 9.7048, 3.00197, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Adept
(@CGUID+62, 17398, 542, 3, 411.776, 84.2264, 9.65481, 6.18492, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+63, 17398, 542, 3, 416.168, 84.3904, 9.72884, 3.38594, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+64, 17398, 542, 3, 410.792, 87.0815, 9.74017, 4.5204, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+65, 17398, 542, 3, 314.581, 195.748, 11.4755, 5.06145, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+66, 17398, 542, 3, 470.202, 58.0113, 9.69645, 1.74533, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+67, 17398, 542, 3, 345.064, 202.261, 11.4512, 4.86947, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+68, 17398, 542, 3, 376.42, 193.6, 9.67691, 3.9619, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+69, 17398, 542, 3, 498.672, 87.2528, 9.7352, 3.50811, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+70, 17398, 542, 3, 502.343, 84.36, 9.74199, 3.08923, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+71, 17398, 542, 3, 496.512, 82.2754, 9.73006, 3.05433, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+72, 17398, 542, 3, 503.437, 115.827, 9.74303, 3.735, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+73, 17398, 542, 3, 437.234, 201.588, 11.4651, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+74, 17398, 542, 3, 500.619, 112.281, 9.7395, 2.05949, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+75, 17398, 542, 3, 404.501, 191.121, 9.59672, 5.27568, 7200, 7200, 0, 0, 0, 0), -- Nascent Fel Orc
(@CGUID+76, 17400, 542, 3, 315.505, -177.885, -25.4268, 0.139626, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+77, 17400, 542, 3, 324.698, -191.281, -25.4236, 1.43117, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+78, 17400, 542, 3, 319.169, -167.128, -25.4206, 6.12611, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+79, 17400, 542, 3, 349.682, -164.977, -25.4359, 0.453786, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+80, 17400, 542, 3, 330.895, -192.461, -25.4221, 1.81514, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+81, 17400, 542, 3, 350.219, -176.124, -25.4376, 0.593412, 7200, 7200, 0, 0, 0, 0), -- Felguard Annihilator
(@CGUID+82, 17414, 542, 3, 320.796, 91.6851, 9.70004, 2.44346, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+83, 17414, 542, 3, 338.039, 96.2697, 9.7017, 1.39626, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+84, 17414, 542, 3, 316.031, 95.6989, 9.70193, 5.55015, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+85, 17414, 542, 3, 318.781, 185.265, 9.69885, 2.00713, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+86, 17414, 542, 3, 453.979, 96.0174, 9.69831, 2.32129, 7200, 7200, 0, 0, 0, 2), -- Shadowmoon Technician
(@CGUID+87, 17414, 542, 3, 472.297, 63.819, 9.69252, 4.72984, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+88, 17414, 542, 3, 331.858, 191.021, 9.68705, 1.79769, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+89, 17414, 542, 3, 483.049, 94.2425, 9.70749, 1.01229, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+90, 17414, 542, 3, 346.392, 198.945, 11.1035, 1.62316, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+91, 17414, 542, 3, 479.362, 96.7883, 9.70604, 0.279253, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+92, 17414, 542, 3, 348.213, 193.649, 9.68951, 1.37881, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+93, 17414, 542, 3, 481.755, 102.112, 9.69804, 5.81195, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+94, 17414, 542, 3, 434.619, 192.888, 9.68881, 0.523599, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+95, 17414, 542, 3, 448.764, 191.025, 9.68808, 0.645772, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+96, 17414, 542, 3, 327.207, 71.2657, 9.69716, 5.25344, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Technician
(@CGUID+97, 17416, 542, 3, 280.142, 70.3569, 9.74308, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+98, 17416, 542, 3, 280.203, 66.8334, 9.74227, 4.29351, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+99, 17416, 542, 3, 291.242, 65.7576, 38.2571, 0.174533, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+100, 17416, 542, 3, 286.996, 58.7694, 24.5374, 0.261799, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+101, 17416, 542, 3, 286.712, 66.7152, 9.7295, 6.0912, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+102, 17416, 542, 3, 286.725, 65.3066, 24.5711, 0.191986, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+103, 17416, 542, 3, 287.898, 70.7117, 9.72841, 4.39823, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+104, 17416, 542, 3, 288.122, 61.9217, 24.6735, 0.0872665, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+105, 17416, 542, 3, 287.612, 95.6354, 24.37, 0.122173, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+106, 17416, 542, 3, 290.079, 103.655, 38.4771, 6.03884, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+107, 17416, 542, 3, 291.076, 100.219, 38.2727, 0, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+108, 17416, 542, 3, 288.546, 90.5341, 24.3603, 0.0174533, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+109, 17416, 542, 3, 287.042, 97.9489, 9.72977, 4.90438, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+110, 17416, 542, 3, 281.559, 99.5473, 9.74115, 2.6529, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+111, 17416, 542, 3, 288.89, 93.1773, 24.6431, 0.0872665, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+112, 17416, 542, 3, 290.296, 97.9128, 38.4291, 6.26573, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+113, 17416, 542, 3, 290.99, 67.8647, 38.2926, 0.15708, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+114, 17416, 542, 3, 291.325, 71.8074, 38.2329, 0.0698132, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+115, 17416, 542, 3, 285.496, 101.854, 9.73356, 3.97935, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+116, 17416, 542, 3, 370.119, 66.6892, 9.73466, 3.01942, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+117, 17416, 542, 3, 365.769, 91.0963, 24.4518, 3.22886, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+118, 17416, 542, 3, 364.938, 69.1484, 38.5124, 3.28122, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+119, 17416, 542, 3, 367.458, 70.4769, 9.72954, 3.15905, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+120, 17416, 542, 3, 367.343, 64.7455, 24.5678, 2.94961, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+121, 17416, 542, 3, 366.707, 101.572, 9.72745, 1.43117, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+122, 17416, 542, 3, 365.768, 94.9574, 24.4349, 3.22886, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+123, 17416, 542, 3, 364.97, 71.8265, 38.5182, 3.21141, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+124, 17416, 542, 3, 373.179, 69.1513, 9.74086, 3.14159, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+125, 17416, 542, 3, 367.633, 58.4013, 24.5171, 2.89725, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+126, 17416, 542, 3, 366.218, 97.7572, 9.72625, 2.02458, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+127, 17416, 542, 3, 367.155, 93.006, 24.6967, 3.14159, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+128, 17416, 542, 3, 366.784, 61.8883, 24.6821, 3.15905, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+129, 17416, 542, 3, 364.188, 99.6752, 38.3535, 2.96706, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+130, 17416, 542, 3, 364.786, 96.3154, 38.5081, 2.87979, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+131, 17416, 542, 3, 364.52, 66.2575, 38.4445, 2.96706, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+132, 17416, 542, 3, 373.069, 97.8788, 9.74094, 1.13446, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+133, 17416, 542, 3, 364.915, 102.142, 38.5238, 2.84489, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+134, 17416, 542, 3, 374.222, 101.531, 9.74316, 4.59022, 7200, 7200, 0, 0, 0, 0), -- Orc Captive
(@CGUID+135, 17429, 542, 3, 408.828, 82.4098, 9.74391, 2.63545, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+136, 17429, 542, 3, 419.18, 83.9983, 38.3595, 0.0872665, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+137, 17429, 542, 3, 410.996, 117.682, 9.73861, 5.75959, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+138, 17429, 542, 3, 415.102, 88.1808, 24.4768, 0.191986, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+139, 17429, 542, 3, 418.287, 80.2253, 38.5705, 0.296706, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+140, 17429, 542, 3, 414.664, 93.3659, 24.4813, 0.0174533, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+141, 17429, 542, 3, 410.53, 112.864, 9.74094, 0.174533, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+142, 17429, 542, 3, 416.689, 90.8326, 24.6821, 0.0523599, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+143, 17429, 542, 3, 417.812, 88.3977, 38.6563, 5.89921, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+144, 17429, 542, 3, 442.164, 55.2048, 9.69734, 1.39626, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+145, 17429, 542, 3, 416.121, 125.956, 24.4986, 0.122173, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+146, 17429, 542, 3, 415.452, 117.542, 9.72946, 0.122173, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+147, 17429, 542, 3, 417.965, 111.22, 38.6017, 6.16101, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+148, 17429, 542, 3, 416.445, 122.088, 24.6879, 0.0349066, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+149, 17429, 542, 3, 418.546, 118.541, 38.5119, 0.139626, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+150, 17429, 542, 3, 414.487, 118.431, 24.6013, 0.226893, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+151, 17429, 542, 3, 419.858, 114.894, 38.2673, 6.24828, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+152, 17429, 542, 3, 495.096, 88.58, 38.7952, 3.1765, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+153, 17429, 542, 3, 493.042, 84.1693, 38.36, 3.24631, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+154, 17429, 542, 3, 495.534, 90.9968, 24.6857, 3.1765, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+155, 17429, 542, 3, 496.1, 94.3368, 24.2776, 3.35103, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+156, 17429, 542, 3, 493.628, 80.0756, 38.5322, 2.58309, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+157, 17429, 542, 3, 496.053, 87.9679, 24.3166, 3.33358, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+158, 17429, 542, 3, 496.52, 115.773, 9.72958, 3.07178, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+159, 17429, 542, 3, 496.865, 118.118, 24.5449, 3.07178, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+160, 17429, 542, 3, 492.437, 115.369, 38.2957, 3.21141, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+161, 17429, 542, 3, 496.107, 122.21, 24.6956, 3.12414, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+162, 17429, 542, 3, 499.61, 118.619, 9.73549, 3.7001, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+163, 17429, 542, 3, 494.196, 118.868, 38.6232, 3.19395, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+164, 17429, 542, 3, 497.257, 126.559, 24.4896, 3.64774, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Neophyte
(@CGUID+165, 17477, 542, 3, 26.4203, -84.8928, -41.0493, 0.645772, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+166, 17477, 542, 3, -11.9011, -83.4997, -41.2512, 0.628318, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+167, 17477, 542, 3, 4.44432, -85.0151, -41.2479, 1.78024, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+168, 17477, 542, 3, 244.008, -68.4965, 9.70378, 2.11185, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+169, 17477, 542, 3, 227.093, -99.1319, 9.701, 2.21657, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+170, 17477, 542, 3, 227.257, -71.2498, 9.70021, 3.87463, 7200, 7200, 0, 0, 0, 0), -- Hellfire Imp
(@CGUID+171, 17491, 542, 3, 131.786, -93.0427, -2.81539, 3.14206, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Rogue
(@CGUID+172, 17491, 542, 3, 483.723, -88.2442, 9.55027, 3.0605, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Rogue
(@CGUID+173, 17491, 542, 3, 181.531, -73.7762, 9.69991, 3.62446, 7200, 7200, 8, 0, 0, 1), -- Laughing Skull Rogue
(@CGUID+174, 17491, 542, 3, 170.166, -93.7266, 9.6934, 1.76685, 7200, 7200, 8, 0, 0, 1), -- Laughing Skull Rogue
(@CGUID+175, 17491, 542, 3, 306.71, 165.99, 9.6166, 5.09133, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Rogue
(@CGUID+176, 17491, 542, 3, 428.906, -20.6582, 9.63164, 0.750492, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Rogue
(@CGUID+177, 17491, 542, 3, 306.339, -4.02884, 9.62585, 6.15417, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Rogue
(@CGUID+178, 17491, 542, 3, 482.555, 175.603, 9.70426, 2.86234, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Rogue
(@CGUID+179, 17491, 542, 3, 300.266, 182.171, 9.60753, 1.94978, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Rogue
(@CGUID+180, 17491, 542, 3, 405.187, -63.8279, 9.69997, 5.5676, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Rogue
(@CGUID+181, 17624, 542, 3, 318.698, 76.7264, 9.61771, 3.67595, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Warden
(@CGUID+182, 17624, 542, 3, 466.618, 95.1607, 9.61807, 1.67525, 7200, 7200, 0, 0, 0, 2), -- Laughing Skull Warden
(@CGUID+183, 17626, 542, 3, 247.788, -28.0225, 7.03577, 4.17134, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+184, 17626, 542, 3, 278.641, -0.402908, 8.02147, 3.36848, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+185, 17626, 542, 3, 467.767, 94.1342, 9.61823, 1.62005, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+186, 17626, 542, 3, 465.385, 93.9836, 9.61759, 1.57843, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+187, 17626, 542, 3, 352.875, 72.4726, 9.615, 5.0562, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+188, 17626, 542, 3, 320.226, 74.1447, 9.61709, 3.67595, 7200, 7200, 0, 0, 0, 0), -- Laughing Skull Legionnaire
(@CGUID+189, 17653, 542, 3, 320.75, -63.6121, -24.6361, 4.88692, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Channeler
(@CGUID+190, 17653, 542, 3, 316.274, -108.877, -24.6027, 1.25664, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Channeler
(@CGUID+191, 17653, 542, 3, 345.848, -74.4559, -24.6402, 3.59538, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Channeler
(@CGUID+192, 17653, 542, 3, 301.988, -86.7465, -24.4517, 0.15708, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Channeler
(@CGUID+193, 17653, 542, 3, 343.584, -103.631, -24.5688, 2.35619, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Channeler
(@CGUID+194, 18894, 542, 3, 456.875, -79.4453, 9.6862, 6.24828, 7200, 7200, 0, 0, 0, 0), -- Felguard Brute
(@CGUID+195, 18894, 542, 3, 456.898, -89.4082, 9.68189, 0.0523599, 7200, 7200, 0, 0, 0, 0), -- Felguard Brute
(@CGUID+196, 18894, 542, 3, 490.701, -75.7409, 9.55482, 1.8787, 7200, 7200, 0, 0, 0, 2), -- Felguard Brute
(@CGUID+197, 18894, 542, 3, 492.417, -9.29333, 9.56341, 1.02598, 7200, 7200, 0, 0, 0, 2), -- Felguard Brute
(@CGUID+198, 19016, 542, 3, 430.485, -74.5045, 9.62771, 6.19338, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+199, 19016, 542, 3, 415.619, -83.7208, 9.61892, 4.77352, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+200, 19016, 542, 3, 428.693, -93.3119, 9.6156, 5.66917, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+201, 19016, 542, 3, 418.592, -70.12, 9.62705, 1.60699, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+202, 19016, 542, 3, 432.618, -80.317, 9.62791, 2.30452, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+203, 19016, 542, 3, 419.593, -90.9202, 9.70846, 0.0174533, 7200, 7200, 3, 0, 0, 1), -- Hellfire Familiar
(@CGUID+204, 19016, 542, 3, 488.286, 1.74285, 9.62832, 1.0472, 7200, 7200, 0, 0, 0, 0), -- Hellfire Familiar
(@CGUID+205, 19016, 542, 3, 489.538, 8.01556, 9.62866, 3.59538, 7200, 7200, 0, 0, 0, 0), -- Hellfire Familiar
(@CGUID+206, 19016, 542, 3, 484.706, 8.66715, 9.63142, 6.16101, 7200, 7200, 0, 0, 0, 0), -- Hellfire Familiar
(@CGUID+207, 21174, 542, 3, 320.911, -83.0625, -133.307, 3.00197, 7200, 7200, 0, 0, 0, 0); -- Magtheridon

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 181713, 542, 3, 275.211, -87.2234, -137.451, -2.49582, 0, 0, 0, 0, 181, 181, 100, 1), -- Manticron Cube
(@OGUID+2, 181713, 542, 3, 367.855, -56.3836, -137.359, 0.017453, 0, 0, 0, 0, 181, 181, 100, 1), -- Manticron Cube
(@OGUID+3, 181713, 542, 3, 308.466, -140.398, -137.302, 2.44346, 0, 0, 0, 0, 181, 181, 100, 1), -- Manticron Cube
(@OGUID+4, 181713, 542, 3, 308.112, -33.208, -137.451, -1.20428, 0, 0, 0, 0, 181, 181, 100, 1), -- Manticron Cube
(@OGUID+5, 181713, 542, 3, 368.347, -118.024, -137.451, 1.22173, 0, 0, 0, 0, 181, 181, 100, 1), -- Manticron Cube
(@OGUID+6, 181766, 542, 3, -2.96045, -115.525, -29.8004, 3.08943, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_PrisonEntry01
(@OGUID+7, 181811, 542, 3, 327.221, 34.7391, 25.2633, 3.14159, 0, 0, 0, 0, 181, 181, 100, 0), -- Doodad_Hellfire_DW_PrisonEntry02
(@OGUID+8, 181812, 542, 3, 327.221, 149.84, 23.8318, 3.14159, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_PrisonEntry03
(@OGUID+9, 181813, 542, 3, 365.545, 69.3179, 11.1708, 3.14159, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+10, 181814, 542, 3, 366.847, 100.435, 11.1708, 3.14159, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+11, 181815, 542, 3, 287.979, 99.5641, 11.1708, -0.022321, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+12, 181816, 542, 3, 288.815, 68.8318, 11.5749, -0.022321, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+13, 181817, 542, 3, 495.532, 84.4274, 11.1708, 3.11927, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+14, 181818, 542, 3, 416.665, 83.5567, 11.1708, 0, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+15, 181819, 542, 3, 456.291, 34.1513, 23.8317, 0, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_PrisonEntry04
(@OGUID+16, 181820, 542, 3, 494.697, 115.16, 11.5749, 3.11927, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+17, 181821, 542, 3, 417.967, 114.674, 11.1708, 0, 0, 0, 0, 0, 181, 181, 100, 1), -- Prison Cell Door
(@OGUID+18, 181822, 542, 3, 455.753, 149.726, 24.3749, 0, 0, 0, 0, 0, 181, 181, 100, 0), -- Doodad_Hellfire_DW_PrisonEntry05
(@OGUID+19, 181823, 542, 3, 260.408, -125.812, -10.3249, 3.14159, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_SummonDoor01
(@OGUID+20, 181921, 542, 3, 371.722, -47.6372, -25.8508, -2.53073, 0, 0, 0, 0, 181, 181, 53, 1), -- Doodad_Hellfire_DW_LargeFloor_Crack02onoff
(@OGUID+21, 181922, 542, 3, 260.167, -46.2649, -25.8508, 2.70526, 0, 0, 0, 0, 181, 181, 53, 1), -- Doodad_Hellfire_DW_LargeFloor_Crack03
(@OGUID+22, 181923, 542, 3, 386.239, -138.305, -25.7111, -0.872664, 0, 0, 0, 0, 181, 181, 53, 1), -- Doodad_Hellfire_DW_LargeFloor_Crack04onoff
(@OGUID+23, 181924, 542, 3, 292.173, -143.163, -25.4868, -1.65806, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_SmallFloor_Crack03onoff
(@OGUID+24, 181925, 542, 3, 266.452, -104.919, -25.3138, -2.53073, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_SmallFloor_Crack04onoff
(@OGUID+25, 181926, 542, 3, 324.071, -23.2872, -25.5655, -2.53073, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_SmallFloor_Crack05onoff
(@OGUID+26, 181927, 542, 3, 386.689, -101.665, -25.2719, 2.53073, 0, 0, 0, 0, 181, 181, 100, 1), -- Doodad_Hellfire_DW_SmallFloor_Crack06onoff
(@OGUID+27, 181982, 542, 3, 456.555, 54.3522, 9.61573, 4.70899, 0, 0, 0, 0, 600, 600, 100, 1), -- Cell Door Lever
(@OGUID+28, 184175, 542, 3, -0.626152, 25.2928, -45.1701, -1.9627, 0, 0, 0, 0, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+29, 184176, 542, 3, -0.629567, 25.3203, -45.1592, -1.95961, 0, 0, 0, 0, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficultyIcon01
(@OGUID+30, 184932, 542, 1, 494.2115, 10.87523, 9.544005, 3.141593, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Fel Iron Chest
(@OGUID+31, 184933, 542, 1, 494.2115, 10.87523, 9.544005, 3.141593, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Solid Fel Iron Chest
(@OGUID+32, 184932, 542, 1, 328.7021, -197.7191, -25.50888, 2.984499, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Fel Iron Chest
(@OGUID+33, 184933, 542, 1, 328.7021, -197.7191, -25.50888, 2.984499, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Solid Fel Iron Chest
(@OGUID+34, 184937, 542, 2, 498.092, 3.54075, 9.5534, 3.24531, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Solid Adamantite Chest

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(@PGUID+31, @PGUID+30, 0, 'Bound/Solid Fel Iron Chest - Pool 1'),
(@PGUID+32, @PGUID+30, 0, 'Bound/Solid Fel Iron Chest - Pool 2');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 4, 'Blood Furnace - Laughing Skull Rogues'),
(@PGUID+30, 1, 'Blood Furnace (Normal) - Master Chest Pool'),
(@PGUID+31, 1, 'Blood Furnace (Normal) - Bound/Solid Fel Iron Chest - Pool 1'),
(@PGUID+32, 1, 'Blood Furnace (Normal) - Bound/Solid Fel Iron Chest - Pool 2');
-- (@PGUID+40, 1, 'Blood Furnace (Heroic) - Master Chest Pool');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+171, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Pathing on Front Stairs'),
(@CGUID+172, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Room After Broggok'),
(@CGUID+175, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Front Left in First Gauntlet'),
(@CGUID+177, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Room Before The Maker'),
(@CGUID+178, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Rear of First Gauntlet'),
(@CGUID+179, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Right Left in First Gauntlet'),
(@CGUID+180, @PGUID+1, 0, 'Blood Furnace - Laughing Skull Rogues - Top of Final Ramp');

-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+30, @PGUID+31, 0, 'Blood Furnace - Bound Fel Iron Chest (184932)'),
(@OGUID+31, @PGUID+31, 0, 'Blood Furnace - Solid Fel Iron Chest (184933)'),
(@OGUID+32, @PGUID+32, 0, 'Blood Furnace - Bound Fel Iron Chest (184932)'),
(@OGUID+33, @PGUID+32, 0, 'Blood Furnace - Solid Fel Iron Chest (184933)'),
(@OGUID+34, @PGUID+30, 0, 'Blood Furnace - Solid Adamantite Chest (184937)'); -- @PGUID+40

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1737101,1889401);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1737101, 2, 15, 33111, 0, 0, 17400, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowmoon Warlock Casts Fel Power on Felguard Annhilator'),
(1889401, 2, 15, 33111, 0, 0, 17371, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowmoon Warlock Casts Fel Power on Felguard Brute');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


