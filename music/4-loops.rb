# 4. Loops
# Taken from Tutorial 5.2

# Fixed Loops

# We can use code to repeat something. So, instead of writing do this three times, we write 3.times do
##| 3.times do
##|   play 50
##|   sleep 0.5
##|   sample :elec_blup
##|   sleep 0.5
##|   play 62
##|   sleep 0.25
##| end

# Change the 3 to another number and run it again.

# Loop Forever, press run to hear the loop
# press stop to stop it.
##| loop do
##|   play 50
##|   sleep 1
##| end

# we can use it for samples too
##| loop do
##|   sample :loop_amen
##|   sleep sample_duration :loop_amen
##| end

# The important thing to know about loops is that they act like black holes for code.
# Once the code enters a loop it can never leave until you press stop - it will just go round and round the loop forever.
# This means if you have code after the loop you will never hear it. For example, the cymbal after this loop will never play:

##| loop do
##|   play 50
##|   sleep 1
##| end

##| sample :drum_cymbal_open

