# 5 Live Loops
# Taken from Tutorial 9.2

##| live_loop :foo do
##|   play 65
##|   sleep 1
##| end

# Now press the Run button. You hear a basic beep every beat. Nothing fun there.
# Don’t press Stop just yet. Change the 60 to 65 and press Run again.
# Woah! It changed automatically without missing a beat. This is live coding.

# Why not change it to be more bass like? Just update your code whilst it’s playing:

##| live_loop :foo do
##|   use_synth :prophet
##|   play :e1, release: 8
##|   sleep 8
##| end

# Let’s make the cutoff move around and some drums:
##| live_loop :foo do
##|   sample :loop_garzul
##|   use_synth :prophet
##|   play :e1, release: 8, cutoff: rrand(70, 130)
##|   sleep 8
##| end

# Change the note from e1 to c1 and press Run:

# You may have wondered why it needs the name :foo. This name is important because it signifies that this live loop is different from all other live loops.
# There can never be two live loops running with the same name.
# This means that if we want multiple concurrently running live loops, we just need to give them different names:

live_loop :ezra do
  use_synth :prophet
  play :c1, release: 8, cutoff: rrand(70, 130)
  sleep 8
end

live_loop :mam do
  sample :bd_haus
  sleep 0.5
end

# You can now update and change each live loop independently and it all just works.


