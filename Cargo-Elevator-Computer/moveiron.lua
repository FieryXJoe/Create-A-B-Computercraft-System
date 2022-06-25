local args = {...} --gets the argument array

--the number of trips the elevator needs to make, 320 iron per trip, rounded up
local x = math.floor((args[1]/320) + 0.99999)
print(x)--for user to know number of trips
for i = x,0,-1 do
    local timerdown = os.startTimer(148)--Create a timer to deposit the items below
    redstone.setOutput("left", true)--Start moving down
    while true do --Basic code to read the timer
        local event, timerID = os.pullEvent("timer")
        if timerID == timerdown then
            redstone.setOutput("left", false)--move back up
            break
        end
    end
    local timerup = os.startTimer(148)--delay before repeating
    while true do
        local event, timerID = os.pullEvent("timer")
        if timerID == timerup then)
            break
        end
    end
end