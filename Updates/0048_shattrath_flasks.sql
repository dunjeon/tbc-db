-- flasks need to apply main spell without restrictions, and triggered spell should be applied automatically when entering a corresponding zone
DELETE FROM spell_area WHERE spell IN(41604,41605,41606,41607,46838,46840,41608,41609,41610,41611,46837,46839);
INSERT INTO spell_area(spell,area,aura_spell,gender,autocast) VALUES
(41606,3606,41608,2,1), -- hyjal summit
(41606,3607,41608,2,1), -- SSC
(41606,3845,41608,2,1), -- TK
(41606,3847,41608,2,1), -- Botanica
(41606,3848,41608,2,1), -- Arcatraz
(41606,3849,41608,2,1), -- Mechanar
(41606,3959,41608,2,1), -- BT
(41606,4075,41608,2,1), -- SWP
(41607,3606,41609,2,1),
(41607,3607,41609,2,1),
(41607,3845,41609,2,1),
(41607,3847,41609,2,1),
(41607,3848,41609,2,1),
(41607,3849,41609,2,1),
(41607,3959,41609,2,1),
(41607,4075,41609,2,1),
(41605,3606,41610,2,1),
(41605,3607,41610,2,1),
(41605,3845,41610,2,1),
(41605,3847,41610,2,1),
(41605,3848,41610,2,1),
(41605,3849,41610,2,1),
(41605,3959,41610,2,1),
(41605,4075,41610,2,1),
(41604,3606,41611,2,1),
(41604,3607,41611,2,1),
(41604,3845,41611,2,1),
(41604,3847,41611,2,1),
(41604,3848,41611,2,1),
(41604,3849,41611,2,1),
(41604,3959,41611,2,1),
(41604,4075,41611,2,1),
(46838,3606,46837,2,1),
(46838,3607,46837,2,1),
(46838,3845,46837,2,1),
(46838,3847,46837,2,1),
(46838,3848,46837,2,1),
(46838,3849,46837,2,1),
(46838,3959,46837,2,1),
(46838,4075,46837,2,1),
(46840,3606,46839,2,1),
(46840,3607,46839,2,1),
(46840,3845,46839,2,1),
(46840,3847,46839,2,1),
(46840,3848,46839,2,1),
(46840,3849,46839,2,1),
(46840,3959,46839,2,1),
(46840,4075,46839,2,1);


