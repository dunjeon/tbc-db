-- Fixed creature 2149 (Dark Iron Raider) which was wrongly using a mount
-- Thanks Zingzah for pointing.
UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 2149;
