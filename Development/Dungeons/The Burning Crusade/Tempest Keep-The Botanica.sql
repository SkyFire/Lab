/* Copyright (C) 11 April 2011-2012 patch Project 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public Licensefor more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses/> 
 *
 * patch Project  Copyright (C) 11 April 2011-2012 patch Project 
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it
 * under certain conditions.
 */
 
   /* Dungeon Normal-Heroic for 5 people */
    /* Bosses */
	
-- Commander Sarannis
SET @ENTRY := 17976;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,2,9,0,100,6,0,10,11000,16000,11,34794,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Resonance on Close'),
(@ENTRY,0,2,0,61,0,100,6,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Arcane Resonance on Close'),
(@ENTRY,0,3,4,0,0,100,6,8000,9000,11000,19000,11,34799,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Devastation'),
(@ENTRY,0,4,0,61,0,100,6,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Arcane Devastation'),
(@ENTRY,0,5,6,0,0,100,6,60000,60000,60000,60000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Summon Bloodwarder Reservist and Bloodwarder Mender'),
(@ENTRY,0,6,7,61,0,100,6,0,0,0,0,12,20078,4,1800000,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Summon Bloodwarder Reservist and Bloodwarder Mender'),
(@ENTRY,0,7,0,61,0,100,6,0,0,0,0,12,19633,4,1800000,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Summon Bloodwarder Reservist and Bloodwarder Mender'),
(@ENTRY,0,8,0,5,0,100,6,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,9,0,6,0,100,7,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17976;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Step forward! I will see that you are properly welcomed.',1,0,100,0,0,11071, 'on Aggro Text'),
(@ENTRY,1,0, 'You are no longer dealing with some underling.',1,0,100,0,0,11076, 'on Cast Text'),
(@ENTRY,2,0, 'Band\'or shorel\'aran!',1,0,100,0,0,11077, 'on Cast Text'),
(@ENTRY,3,0, 'Guards! Come and kill these intruders!',1,0,100,0,0,11078, 'on Summon Text'),
(@ENTRY,4,0, 'Mission accomplished.',1,0,50,0,0,11073, 'on Player Kill Text'),
(@ENTRY,4,1, 'Oh stop your whimpering.',1,0,50,0,0,11072, 'on Player Kill Text'),
(@ENTRY,5,0, 'I have not yet... begun to...',1,0,100,0,0,11079, 'on Death Text');

-- Thorngrin the Tender
SET @ENTRY := 17978;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,2,0,0,100,2,12000,18000,18000,24000,11,34659,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Hellfire'),
(@ENTRY,0,2,0,61,0,100,2,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Hellfire'),
(@ENTRY,0,3,4,0,0,100,4,12000,18000,18000,24000,11,39131,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Hellfire'),
(@ENTRY,0,4,0,61,0,100,4,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Hellfire'),
(@ENTRY,0,5,6,0,0,100,6,6000,10000,24000,30000,11,34661,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sacrifice'),
(@ENTRY,0,6,0,61,0,100,6,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Sacrifice'),
(@ENTRY,0,7,8,0,0,100,6,21000,25000,28000,29000,11,34670,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage'),
(@ENTRY,0,8,0,61,0,100,6,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Cast Enrage'),
(@ENTRY,0,9,0,2,0,100,7,0,50,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 50% HP'),
(@ENTRY,0,10,0,2,0,100,7,0,20,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 20% HP'),
(@ENTRY,0,11,0,5,0,100,6,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,12,0,6,0,100,7,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17978;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'What aggravation is this? You will die!',1,0,100,0,0,11205, 'on Aggro Text'),
(@ENTRY,1,0, 'Scream while you burn!',1,0,50,0,0,11211, 'on Cast Text'),
(@ENTRY,1,1, 'I\'ll incinerate you!',1,0,50,0,0,11210, 'on Cast Text'),
(@ENTRY,2,0, 'Your life will be mine!',1,0,100,0,0,11208, 'on Cast Text'),
(@ENTRY,3,0, '%s becomes enraged!',2,0,100,0,0,0, 'combat Enrage'),
(@ENTRY,4,0, 'I revel in your pain!',1,0,100,0,0,11209, 'at 50% HP Text'),
(@ENTRY,5,0, 'You seek a prize, eh? How about death?',1,0,100,0,0,11206, 'at 20% HP Text'),
(@ENTRY,6,0, 'I hate to say I told you so...',1,0,100,0,0,11207, 'on Player Kill Text'),
(@ENTRY,7,0, 'You won\'t... get far.',1,0,100,0,0,11212, 'on Death Text');






























