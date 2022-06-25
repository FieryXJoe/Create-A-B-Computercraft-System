local args = {...}
 
local x = math.floor((args[1]/320) + 0.5)
print(x)
for i = x,0,-1 do
    local timerdown = os.startTimer(80)
    while true do
        local event, timerID = os.pullEvent("timer")
        if timerID == timerdown then
            redstone.setOutput("left", true)
            break
        end
    end
    local timerup = os.startTimer(80)
    while true do
        local event, timerID = os.pullEvent("timer")
        if timerID == timerup then
            redstone.setOutput("left", false)
            break
        end
    end
end