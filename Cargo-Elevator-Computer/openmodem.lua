local modem = peripheral.wrap("right") --makes the physical modem an object
modem.open(2) --opens it up on channel 2
 
--Code for receiving a message from another computer
local event, side, channel, replyChannel, message, distance
repeat
    event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == 2
 
shell.run(message) -- runs the program name and args sent to it
shell.run("openmodem") -- make it recusrsive