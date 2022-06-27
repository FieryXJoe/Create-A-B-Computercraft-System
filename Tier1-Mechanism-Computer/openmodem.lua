local modem = peripheral.wrap("right") --makes the physical modem an object
modem.open(3) --opens it up on channel 3
 
--Code for receiving a message from another computer
local event, side, channel, replyChannel, message, distance
repeat
    event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == 3
 
shell.run(message) -- runs the program name and args sent to it
shell.run("openmodem") -- make it recusrsive