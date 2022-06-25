local arg = {...}

local modem = peripheral.wrap("right")
modem.open(1)
modem.transmit(2,1,"moveiron "..arg[1])