Known bugs with the Star Wars revised files.

- Exotic Weapon Proficiency feat does not load correctly from saved characters for any class including 
	the Jedi. Only WEAPONAUTO worked for the Jedi.

- When multiclassing INTO a Jedi class, the files assume you will pick the EWP(Lightsaber) starting 
	feat instead of the Blaster Pistol proficiency because the ADD:FEAT tag does not seem to work 
	for EWP(Lightsaber). This is probably related to the above problem.

- Primitive races that take Jedi levels act a bit funny since you give up all the starting feats of the 
	Jedi(specifically Force Sensitive and EWP-Lightsaber) which are defining characteristics of the 
	classes. Maybe the game designers intended for Primitive Races to NEVER start as Jedi but that's 
	not clear in the rules.

- The multiclass starting feat restrictions are implemented by defining 2 copycat classes, one allowed 
	at 1st level and one allowed after first. This is clunky but gets the job done. Won't be able to 
	consolidate these double classes until pcgen tracks level progression and applies PREREQs only 
	at the instant that levels are added in sequence. In other words, timing is everything.

