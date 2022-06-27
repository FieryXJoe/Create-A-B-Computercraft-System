local arg = {...}

local modem = peripheral.wrap("right")
modem.open(1)
modem.transmit(3,1,(arg[1] and "turnOn" or "turnOff"))