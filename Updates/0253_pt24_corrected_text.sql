-- Repeat of page_text with id 21 -> separate text.
-- https://wow.gamepedia.com/A_Bloodstained_Journal_Page
UPDATE
	`page_text`
SET
	`text` = ". . .downward spiral of despair. First she mocks me and now she is engaged. The ungracious charlatan was pretending to love when truly she desired to hurt me all along. A black void lurks within me now and it grows with each waking moment. The blood I shall spill pales in comparison to the tears I have shed. . ."
WHERE
	`entry` = 24;
