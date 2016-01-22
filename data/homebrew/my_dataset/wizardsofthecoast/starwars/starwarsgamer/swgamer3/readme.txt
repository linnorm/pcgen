d20 Star Wars Droids for PCGen
------------------------------

Hi.  The files in this .zip file are intended as a PCGen implementation of the "Droids as Characters" article in WotC's "Star Wars Gamer" magazine, issue #3.  You can put them in any \PCGen\data\ subdirectory you like, but they must all be in the same subdirectory - I keep them all in a separate \droids\ subdirectory under the \WotC\..\starwars\ area, myself.

To use the files load the .pcc as normal.  Generate a character (I suggest using the "design with points" option for stats - it seems more appropriate for a droid!) as normal, selecting a suitable size droid as the character's "race" (note only small or medium sized droids are allowed as PCs).  Choosing a droid race will cause you to be prompted for a degree and transmission system (wheels, tracks, legs, etc.).  When you get to choosing a class, there are now "droid only" professional classes that do two things the standard classes don't - they give you a free "DroidMaker" feat and 3 Droid Quirk feats at first level and they give no Force points or (except for DroidThug) weapon proficiencies.  For NPC droids and droids that only have two quirks (i.e. most of them) you need to take one or more of the "No Quirk" slot-fillers.  One level of a "droid class" on a "droid race" base will give you a base "factory fresh" droid character.  To add a body type and arms choose them from the droid-only equipment lists - all of the droid equipment from SWG3 and the CRB are there, I think.  Finally, for a heroic droid, choose a heroic class level and add two quirks (which now appear as feats available to droids only).  The heroic class will add a Force point which you need to delete manually (sorry).

The files are complete as far as I can make them, but there are a few issues I know of but don't know how to fix - if you have any ideas please tell me about them!  The known issues are:

   Serv-O-Droid and Loronar droids are supposed to roll d20 for an additional quirk - as it stands they don't get one since you can't make a feat add another feat.  The only fix here is to choose the extra quirk as the third DroidQuirk feat at first level - I will put in a feature request to address this unless someone can enlighten me with a suggestion...

   For Veril Line and Obsessive droids one skill gets a bonus while 3 or 4 others that the character has spent points on are supposed to take a penalty.  I could find no way to do this, so the DESC just says to keep back 3-4 skill points.  If a feat could auto-add another feat this would be fixable, so it adds to the feature request from above...

   Droids are not supposed to get all the "usable untrained" skills an organic being gets.  Currently they do because there is only one binary "untrained" tag.  I will be asking for this to be extended as a development request.

   Droids are not supposed to get Force points.  Without creating a complete new set of classes for them I don't know how to stop the "ADD:FORCEPOINT" at each level taking effect; the fairly easy workaround is to just delete FPs as they arise for droid characters.

   Droid appendages are currently "containers" that can carry tools, etc., BUT if you want to get the benefit of the tools counted in you have to equip them.  The ideal thing here would be to have droid appendages each add one arm/hand to the equipped position list, but the whole "variable limb configuration" thing is currently under development (right now each character has two and only two arms).

   Very large and very small droids are supposed to have multipliers to their STR score; this is not currently possible with PCGen.  I have added STR adds/subtractions instead.  Personally, I think the "multiply/divide" approach is flawed given the logarithmic nature of stats in d20 (cf. +10 STR -> X4 carrying cap., PHB), but whatever.

   Droids who do not take the Soldier or Scout classes are not supposed to get weapon proficiencies.  Again, without duplicating all the classes for them I could find no way to do this.  The workaround is to either (a) reverse out the proficiencies manually on the character sheet (i.e. cross them out and adjust any ToHit numbers as required) or (b) to rule that droids get the proficiencies in your game (this is what I plan to do).

There are very likely other bugs, problems and queries with the files and their results.  If you find some - and even more so if you manage to fix them (;-)) - please let me know at droids@yarm.demon.co.uk.

Cheers,

Balesir