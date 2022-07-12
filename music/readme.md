## Intorducing the Sonic Pi
https://www.youtube.com/watch?v=OLLwG_SN8oo

https://sonic-pi.net/

Essentials - Code Music with Sonic Pi 
https://magpi.raspberrypi.com/books/essentials-sonic-pi-v1/pdf/download


# Lessons

## 1 - Intro to Sonic Pi

What does it sound like
How does it do it
The music deck (IDE)

Code is intructions for the band
Everytime you press run
## 2 - Playing Notes & Samples

### Notes
pitch, multiple lines

play 60
sleep 1
play 72

use_synth: :prophet
play :e1, release: 8

### Samples

sample :loop_amen, rate: 1.5

sample :loop_amen, onset: 3



## 3 - Looping

loop do
    synth: tb303, note:: :e1, release: 0.4
    sleep 0.5
end

5.times do

end

### Live Loop
Change while its still playing
There are four core ingredients to a live_loop. The frst is its 
name. Our live_loop above is called :beats. You’re free to call 
yours anything you want. The second ingredient is the do word, which marks where the live_loop starts. The third is the end word, which marks where 
the live_loop fnishes. Finally, there is the body of the live_loop, 
which describes what the loop is going to repeat – that’s the bit 
between the do and end.

live_loop :beats do
 sample :bd_haus
 sleep 0.5
end

Well, the beauty of live_loops is that you can 
redefne them on-the-fy. This means that while they’re still running, 
you can change what they do

--
live_loop :choral_drone do
 sample :ambi_choir, rate: 0.4
 sleep 1
end

Now hit the Run button or press ALT+R. You’re now listening to 
some gorgeous choir sounds. Now, while it’s still playing, change 
the rate from 0.4 to 0.38. Hit Run again. Whoa! Did you hear the 
choir change note? Change it back up to 0.4 to return to how it was. 

Now, drop it to 0.2, down to 0.19, and then back up to 0.4. See how 
changing just one parameter on-the-fy can give you real control 
of the music? Now play around with the rate yourself - choose your 
own values. Try negative numbers, really small numbers, and large 
numbers. Have fun


Sleeping is important
One of the most important lessons about live_loops is that they need 
rest. Consider the following live_loop:

live_loop :infnite_impossibilities do
 sample :ambi_choir
end

If you try running this code, you’ll immediately see Sonic Pi 
complaining that the live_loop did not sleep. This is a safety 
system kicking in! Take a moment to think about what this code is 
asking the computer to do. That’s right, it’s asking the computer to 
play an infnite amount of choir samples in zero time. Without the 
safety system, the poor computer will try to do this and crash and burn 
in the process. So remember- your live_loops must contain a sleep.


loop :peter do
    sample :loop_amen, onset: pick , sustain 0, release: 0.1
    sleep 0.125
end

loop :john do
    sample :guit_em9, onset: pick , sustain 0, release: 0.1
    sleep 0.125
end

loop :fred do
    synth: tb303, note:: :e1, release: 0.1, cutoff: rrand(70,130)
    sleep 0.2
end

## 4 - Mixing it Up with parameters



## 5 - Special effects

:reverb
:krush
:echo

with_fx :reverb, room: 1 do
    8.times do
        play (scale :e3, :minor_petantonic).choose, release: 0.1
    end
end

with_fx :reverb, mix: 0.2 do
  loop do
    play scale(:Eb2, :major_pentatonic, num_octaves: 3).choose, release: 0.1, amp: rand
    sleep 0.1
  end
end