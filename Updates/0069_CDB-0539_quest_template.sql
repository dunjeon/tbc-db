-- "The Monogrammed Sash" quest had wrong 'repeatable' flag
-- Thanks Neotmiren for pointing and fixing.
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 8552;
