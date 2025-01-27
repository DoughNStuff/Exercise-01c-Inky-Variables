/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 Variable checking:
 Equality: ==
 Not equality !=
 Greater: >
 Less: <
 Greater or equal: >=
 Less or equal: <=
 
 In the assignment:
- Assign at least TWO new variables through player choices
- Print at least one of the variables to the player in a passage
- Check the value of a variable and have it do something
- Commit and push your changes to your repository
- Edit your Readme.md and LICENSE files
- Turn in the URL of the story on canvas
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0

-> memory

== memory ==
Before you stands the Cavern of Legends. You wish your childhood pet was with you now. The cave might be less imtimidating then. What was your pet's name?

* [Johanas]
~ pet_name = "Johanas" 
-> cave_mouth
* [Cheese]
~ pet_name = "Cheese"
-> cave_mouth
* [Thunder Lord, Destroyer of Worlds]
~ pet_name = "Thunder Lord, Destroyer of Worlds"
-> cave_mouth


== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "Cheese": Cheese woulde HATE it here in the west| }

+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
{pet_name == "Thunder Lord, Destroyer of Worlds": Wait! Theres something beyond the gold! It couldn't be, could it..?| }

* {pet_name == "Thunder Lord, Destroyer of Worlds"} [It's Thunder Lord!] -> thunder_lord
-> END

== thunder_lord ==
"Hello human child, it is I, Thunder Lord, Destroyer of Worlds"
Woah, was Thunder Lord always this intense? How should I approach this?
* [Act casual] -> casual
* [Bow down to His Greatness] -> greatness
-> END

== casual ==
"How's it hanging my ole pal!?" you ask
"Such insolence!"
Yikes. Thunder Lord struck you down where you stand
-> END

== greatness ==
"Oh Great Thunder Lord, it is most amazing to see you once more and gaze upon your visage"
"Indeed. Now please leave, I am basking in my gold as you can see"
What the what? You want that gold.
* [Leave emptyhanded] -> defeat
* [Fight back!] -> fight
-> END

== defeat ==
You turn around and leave without antnother word.
{torches >= 1: But at least you got this sick torch!| }
-> END

== fight ==
How should you approach fighting THE Thunder Lord, the DESTROYER of WORLDS?
* [PUNCH] -> punch
* [FIRE] -> fire
-> END

== punch ==
You attempt to punch Thunder Lord, yeouwch, he crushed you
END
-> END

== fire ==
You light Thunder Lord on fire with your torch
"AAAHHHHHHH IT BURNS, YOU WILL PAY FOR THIIIIIIIiiiiiiiiiis..."
Thunder Lords screams melted away, literally
Looks like you got your gold! That's good! I hope there are no reprocussions for killing Thunder Lord! Peace!
-> END