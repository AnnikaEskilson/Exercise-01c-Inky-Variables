/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/



-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.



+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
+ [Take the north tunnel] -> north_tunnel
+ [Take the south tunnel] -> south_tunnel 
* [Pick up the axe] -> axe_pickup
+ [Take the new tunnel] -> new_tunnel



== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== north_tunnel ==
You are in the north. You hear a noise. You are now unsure of your surroundings.
+ [Go back] -> west_tunnel
+ [Go back] -> torch_pickup
-> END

== south_tunnel ==
You are now in the south. All around you is gold and silver worth millions. You have hit jackpot. 
* {axe_pickup} [Sharpen Axe] -> south_tunnel_axe
+ [Go back] -> cave_mouth
-> END

== south_tunnel_axe ==
The sharpenness of your axe is successful. You now have plenty of silver and gold. 
-> END 

== new_tunnel == 
This tunnel has never been discovered before. It is dark and dampy. You cant see anything. 
* {torch_pickup} [Light Torch] -> new_tunnel_lit
+ [Go Back] -> cave_mouth
-> END 

== new_tunnel_lit == 
You can now see the inside of the new tunnel. You start discovering it. 
-> END 

