# 2 Chaning Synths
# Taken from Tutorial 2.3

# Sonic Pi has a number of different instruments it calls synths (which is short for synthesisers). Whereas samples represent pre-recorded sounds,
# synths are capable of generating new sounds depending on how you control them (which we’ll explore later in this tutorial).
# First, let’s learn how to select the current synth to use.

# A fun sound is the saw wave - let’s give it a try:
use_synth :saw
play 38
sleep 0.25
play 50
sleep 0.25
play 62

# Let’s try another sound - the prophet:
##| use_synth :prophet
##| play 38
##| sleep 0.25
##| play 50
##| sleep 0.25
##| play 62

# How about combining two sounds. First one after another:
##| use_synth :saw
##| play 38
##| sleep 0.25
##| play 50
##| sleep 0.25
##| use_synth :prophet
##| play 57

# To see which synths Sonic Pi has for you to play with take a look at the Synths option in the menu at the bottom of this help screen (between Examples & Fx). There are over 20 to choose from. Here are a few of my favourites: 
# :prophet 
# :dsaw 
# :fm 
# :tb303 
# :pulse 