-- Add missing Medical Supplies g.181898 for The Cryo-Core q.9703
-- For some reason we had 0 spawns of them.
-- Ported from wotlk-db (using same guids)
DELETE FROM gameobject WHERE id=181898;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(85522, 181898, 530, 1, -2158.83, -11376.7, 65.9939, -1.91986, 0, 0, -0.819151, 0.573577, 600, 600, 255, 1),
(85523, 181898, 530, 1, -2014.98, -11348.5, 65.6022, -2.3911, 0, 0, -0.930417, 0.366502, 600, 600, 255, 1),
(85524, 181898, 530, 1, -2144.11, -11395.2, 68.0003, 1.37881, 0, 0, 0.636078, 0.771625, 600, 600, 255, 1),
(85525, 181898, 530, 1, -2080.05, -11393.5, 61.7525, 0.191985, 0, 0, 0.0958451, 0.995396, 600, 600, 255, 1),
(85526, 181898, 530, 1, -2057.14, -11409.9, 57.8194, -1.67551, 0, 0, -0.743143, 0.669133, 600, 600, 255, 1),
(85527, 181898, 530, 1, -2005.52, -11315.5, 62.9678, 2.32129, 0, 0, 0.91706, 0.398748, 600, 600, 255, 1),
(85528, 181898, 530, 1, -2128.94, -11347.8, 63.1824, -0.436332, 0, 0, -0.216439, 0.976296, 600, 600, 255, 1),
(85529, 181898, 530, 1, -2116.34, -11416.4, 66.4483, 2.65289, 0, 0, 0.970294, 0.241927, 600, 600, 255, 1),
(85530, 181898, 530, 1, -2090.86, -11338, 62.1044, 0.872664, 0, 0, 0.422618, 0.906308, 600, 600, 255, 1),
(85531, 181898, 530, 1, -2094.64, -11376.9, 63.561, 2.58308, 0, 0, 0.961261, 0.275641, 600, 600, 255, 1),
(85532, 181898, 530, 1, -2123.05, -11274.4, 65.9207, 2.94959, 0, 0, 0.995395, 0.0958539, 600, 600, 255, 1),
(85533, 181898, 530, 1, -2090.29, -11311.2, 63.2956, 1.22173, 0, 0, 0.573576, 0.819152, 600, 600, 255, 1),
(85534, 181898, 530, 1, -2075.02, -11327, 62.1804, 0.401425, 0, 0, 0.199368, 0.979925, 600, 600, 255, 1),
(85535, 181898, 530, 1, -2108.11, -11325.4, 63.2868, 3.01941, 0, 0, 0.998134, 0.0610534, 600, 600, 255, 1),
(85536, 181898, 530, 1, -2072.34, -11255.3, 68.5893, -0.261798, 0, 0, -0.130525, 0.991445, 600, 600, 255, 1),
(85537, 181898, 530, 1, -2092.11, -11241.6, 68.3309, 3.05433, 0, 0, 0.999048, 0.0436174, 600, 600, 255, 1),
(85538, 181898, 530, 1, -2093.05, -11278.7, 64.9558, 2.82743, 0, 0, 0.987688, 0.156436, 600, 600, 255, 1),
(85539, 181898, 530, 1, -2136.23, -11360.7, 63.3872, -2.87979, 0, 0, -0.991445, 0.130528, 600, 600, 255, 1),
(85540, 181898, 530, 1, -2121.75, -11306.3, 63.2741, -1.36136, 0, 0, -0.629322, 0.777145, 600, 600, 255, 1),
(85541, 181898, 530, 1, -2021.3, -11386.2, 63.5603, -2.25147, 0, 0, -0.902584, 0.430513, 600, 600, 255, 1),
(85542, 181898, 530, 1, -2055.86, -11367.6, 63.9101, 1.43117, 0, 0, 0.656059, 0.75471, 600, 600, 255, 1),
(85543, 181898, 530, 1, -2072.56, -11347.1, 62.1168, 0.925024, 0, 0, 0.446198, 0.894934, 600, 600, 255, 1),
(85544, 181898, 530, 1, -2103.41, -11396.3, 63.3343, -0.157079, 0, 0, -0.0784588, 0.996917, 600, 600, 255, 1),
(85545, 181898, 530, 1, -2102.47, -11289.8, 63.2742, -0.820303, 0, 0, -0.398748, 0.91706, 600, 600, 255, 1),
(85546, 181898, 530, 1, -2106.36, -11361.4, 63.5015, 2.84488, 0, 0, 0.989015, 0.147813, 600, 600, 255, 1),
(85547, 181898, 530, 1, -2073.55, -11372.2, 63.8179, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 600, 255, 1),
(85548, 181898, 530, 1, -2019.35, -11285.5, 70.6607, -0.506145, 0, 0, -0.25038, 0.968148, 600, 600, 255, 1),
(85549, 181898, 530, 1, -2047.77, -11247.6, 78.1543, -2.82743, 0, 0, -0.987688, 0.156436, 600, 600, 255, 1),
(85550, 181898, 530, 1, -2036.57, -11329.7, 66.3521, 0.95993, 0, 0, 0.461748, 0.887011, 600, 600, 255, 1),
(85551, 181898, 530, 1, -2074.02, -11286.2, 65.4094, -1.0472, 0, 0, -0.500001, 0.866025, 600, 600, 255, 1),
(85552, 181898, 530, 1, -2114.61, -11316.9, 63.3113, 2.63544, 0, 0, 0.968147, 0.250383, 600, 600, 255, 1),
(85553, 181898, 530, 1, -2012.04, -11293.3, 66.6079, 2.02458, 0, 0, 0.848048, 0.52992, 600, 600, 255, 1),
(85554, 181898, 530, 1, -2126.77, -11243.8, 66.185, -0.802851, 0, 0, -0.390731, 0.920505, 600, 600, 255, 1),
(85555, 181898, 530, 1, -2108.32, -11212, 78.0577, 1.69297, 0, 0, 0.748956, 0.66262, 600, 600, 255, 1),
(85556, 181898, 530, 1, -2050.69, -11285, 67.2437, 2.16421, 0, 0, 0.882948, 0.469471, 600, 600, 255, 1);

