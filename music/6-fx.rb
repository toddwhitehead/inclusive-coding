# 6 Adding FX
# Taken from tutorial 6.1

# In this section we’ll look at a couple of FX: reverb and echo.

# Reverb
# If we want to use reverb we write with_fx :reverb as the special code to our block like this:
##| with_fx :reverb do
##| play 50
##| sleep 0.5
##| sample :elec_plip
##| sleep 0.5
##| play 62
##| end

# Echo
# There are many FX to choose from. How about some echo?

##| with_fx :echo do
##|   play 50
##|   sleep 0.5
##|   sample :elec_plip
##|   sleep 0.5
##|   play 62
##| end

# Let’s make the echo take longer to fade away by setting the decay: time to 8 beats:
##| with_fx :echo, phase: 0.5, decay: 8 do
##|   play 50
##|   sleep 0.5
##|   sample :elec_plip
##|   sleep 0.5
##|   play 62
##| end


# Have a look at the Fx tab in the help file for more FX
##| with_fx :wobble do
##|   play 50
##| end
