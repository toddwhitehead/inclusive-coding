# 1 First Beeps
# Taken from Tutorial 2.1
# This is where it all starts. Now, press Run…
play 70

# Intense. Press it again. And again. And again…
# Try changing the number to 75, Can you hear the difference? Try a lower number like 60:

# So, lower numbers make lower pitched beeps and higher numbers make higher pitched beeps.

Playing a note is quite fun, but playing many at the same time can be even better. Try it:
  ##| play 72
  ##| play 75
  ##| play 79
  
# So, when you write multiple plays, they all play at the same time. Try it for yourself - which numbers sound good together? Which sound terrible? Experiment, explore and find out for yourself.

# Melody
# What if you wanted to play one note after another and not at the same time? Well, that’s easy, you just need to sleep between the notes:

##| play 72
##| sleep 1
##| play 75
##| sleep 1
##| play 79

# So what does the 1 mean in sleep 1? Well it means the duration of the sleep. It actually means sleep for one beat, but for now we can think about it as sleeping for 1 second. So, what if we wanted to make our arpeggio a little faster? Well, we need to use shorter sleep values. What about a half i.e. 0.5:
##| play 72
##| sleep 0.5
##| play 75
##| sleep 0.5
##| play 79

# Notice how it plays faster. Now, try for yourself, change the times - use different times and notes.

# Traditional Note Names
# For those of you that already know some musical notation (don’t worry if you don’t - you don’t need it to have fun) you might want to write a melody using note names such as C and F# rather than numbers. Sonic Pi has you covered. You can do the following:
##| play :C
##| sleep 0.5
##| play :D
##| sleep 0.5
##| play :E

# Remember to put the colon : in front of your note name so that it goes pink.
